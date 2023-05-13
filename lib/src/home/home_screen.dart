import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/pages/stripe.dart';
import 'package:merchant_app/src/settings/cubit/logout_cubit.dart';
import 'package:nfc_manager/nfc_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String merchantLogo = '';
  int isagent = 0;

  @override
  void initState() {
    super.initState();
    getMerchantLogo();
  }

  Future<void> getMerchantLogo() async {
    final merchantLogovalue = await MySharedPreferences().getStringValue(
      Constants.profileImage,
    );
    final isagentValue =
        await MySharedPreferences().getIntValue(Constants.isagent);
    setState(() {
      merchantLogo = merchantLogovalue;
      isagent = isagentValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          BlocListener<LogoutCubit, LogoutState>(
            listener: (context, state) {
              if (state is LogOutError) {
                state.errorMessage.showSnackBar(context);
              } else if (state is LogOutSuccess) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  ScreenNames.loginScreen,
                  (Route<dynamic> route) => false,
                );
              }
            },
            child: IconButton(
              onPressed: () {
                context.read<LogoutCubit>().logOut();
              },
              icon: const Icon(Icons.logout),
            ),
          )
        ],
        backgroundColor: ColorName.primaryRed,
        title: Assets.images.whitelogo.image(
          fit: BoxFit.fill,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              height: 75,
              width: 670,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    merchantLogo != ''
                        ? merchantLogo
                        : Constants.defaultImageAvatr,
                  ),
                ),
              ),
            ),

            SizedBox(height: size.height * 0.01),

            ///[If is Agent]
            if (isagent == 1) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "DASHBOARD",
                    image: "assets/images/dashboard.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.dashboardScreen);
                    },
                  ),
                  _button(
                    text: "TRANSACTIONS",
                    image: "assets/images/transactions.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.transactionScreen);
                    },
                  ),
                  _button(
                    text: "SETTINGS",
                    image: "assets/images/settings.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.settingsScreen);
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Currency Card', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "SCAN2PAY",
                    image: "assets/images/scan.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(ScreenNames.scanMeScreen,
                          arguments: {'type': 'barcode'});
                    },
                  ),
                  _button(
                    text: "TAP2PAY",
                    image: "assets/images/nfc.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(ScreenNames.scanMeScreen,
                          arguments: {'type': 'nfc'});
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Crypto Card', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "SCAN2PAY",
                    image: "assets/images/scan.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ScreenNames.cryptoScanToPay,
                          arguments: {'type': 'barcode'});
                    },
                  ),
                  _button(
                    text: "TAP2PAY",
                    image: "assets/images/nfc.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ScreenNames.cryptoScanToPay,
                          arguments: {'type': 'nfc'});
                    },
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Agent', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "CASH IN",
                    image: "assets/images/cashin.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(ScreenNames.cashInScreen);
                    },
                  ),
                  _button(
                    text: "CASH OUT",
                    image: "assets/images/cashout.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.cashOutScreen);
                    },
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Bank Card', style: TextStyle(fontSize: 18)),
              if (Constants.stripe == "true") ...[
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: _button(
                      text: "Debit/Credit Cards",
                      image: 'assets/images/stripepayment.png',
                      size: size,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PaymentSheetScreen(),
                        ));
                      },
                    )),
              ],
            ],

            ///[If not Agent]
            if (isagent == 0) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "DASHBOARD",
                    image: "assets/images/dashboard.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.dashboardScreen);
                    },
                  ),
                  _button(
                    text: "TRANSACTIONS",
                    image: "assets/images/transactions.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.transactionScreen);
                    },
                  ),
                  _button(
                    text: "SETTINGS",
                    image: "assets/images/settings.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(ScreenNames.settingsScreen);
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Currency Card', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "SCAN2PAY",
                    image: "assets/images/scan.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(ScreenNames.scanMeScreen,
                          arguments: {'type': 'barcode'});
                    },
                  ),
                  _button(
                    text: "TAP2PAY",
                    image: "assets/images/nfc.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(ScreenNames.scanMeScreen,
                          arguments: {'type': 'nfc'});
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Crypto Card', style: TextStyle(fontSize: 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(
                    text: "SCAN2PAY",
                    image: "assets/images/scan.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ScreenNames.cryptoScanToPay,
                          arguments: {'type': 'barcode'});
                    },
                  ),
                  _button(
                    text: "TAP2PAY",
                    image: "assets/images/nfc.png",
                    size: size,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ScreenNames.cryptoScanToPay,
                          arguments: {'type': 'nfc'});
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(color: Colors.black)),
              Text('Bank Card', style: TextStyle(fontSize: 18)),
              if (Constants.stripe == "true") ...[
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: _button(
                      text: "Debit/Credit Cards",
                      image: 'assets/images/stripepayment.png',
                      size: size,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PaymentSheetScreen(),
                        ));
                      },
                    )),
              ],
            ],
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: size.height * 0.12,
        width: size.width * 0.25,
        child: FittedBox(
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              const Text(
                "Xenio POS V 2.0.0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: size.height * 0.05,
        decoration: const BoxDecoration(
          color: ColorName.primaryRed,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28.0),
            topRight: Radius.circular(28.0),
          ),
        ),
      ),
    );
  }

  Widget _button({
    required String text,
    required Size size,
    required String image,
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size.width * 0.26,
        height: size.height * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: ImageIcon(AssetImage(image), color: ColorName.primaryRed),
            ),
            const SizedBox(height: 3.0),
            Expanded(
              flex: 2,
              child: Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }
}

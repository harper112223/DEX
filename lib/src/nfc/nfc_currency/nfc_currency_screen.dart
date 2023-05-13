import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/nfc/nfc_currency/cubit/nfc_currency_cubit.dart';
import 'package:merchant_app/src/nfc/nfc_currency/model/nfc_currency_model.dart';

import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';

class CryptoNFCAmountScreen extends StatefulWidget {
  final String type;

  const CryptoNFCAmountScreen({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _CryptoNFCAmountScreenState createState() => _CryptoNFCAmountScreenState();
}

class _CryptoNFCAmountScreenState extends State<CryptoNFCAmountScreen> {
  int step = 0;
  final TextEditingController _amountController = TextEditingController();
  String _selectedCurrency = "USD";

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<NfcCurrencyCubit>().getCurrency();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        body: BlocConsumer<NfcCurrencyCubit, NfcCurrencyState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is NfcCurrencyLoadingState) {
                return LoadingScreen();
              } else if (state is NfcCurrencySuccesstate) {
                return Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff33E3FF),
                        Color(0xff33E3FF),
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomAppBar(
                          title: 'Crypto Point of Sale',
                          textColor: Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: size.height * 0.08),
                        const Text(
                          "AMOUNT?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: DropdownButtonFormField<Data>(
                                    dropdownColor: ColorName.primaryRed,
                                    items: state.model.data
                                        .map<DropdownMenuItem<Data>>(
                                            (Data value) {
                                      return DropdownMenuItem<Data>(
                                        value: value,
                                        child: Text(
                                          "${value.code}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  color: _theme
                                                      .colorScheme.onSecondary,
                                                  fontSize: 22),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (Data? newValue) {
                                      setState(() {
                                        print(newValue!.code);
                                        _selectedCurrency = newValue!.code!;
                                      });
                                    },
                                    hint: Text(
                                      "USD",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: _theme
                                                  .colorScheme.onSecondary,
                                              fontSize: 22),
                                    ),
                                    decoration:
                                        InputDecoration.collapsed(hintText: ''),
                                    iconEnabledColor:
                                        _theme.colorScheme.onSecondary,
                                    iconDisabledColor:
                                        _theme.colorScheme.onSecondary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                flex: 3,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                  ),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "0.0",
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                  autofocus: true,
                                  cursorColor: ColorName.primaryRed,
                                  controller: _amountController,
                                  inputFormatters: [
                                    FilteringTextInputFormatter(
                                      RegExp(r'^\d+\.?\d{0,2}'),
                                      allow: true,
                                    )
                                  ],
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 1.0),
                        Container(
                          width: size.width,
                          height: 2.0,
                          color: Colors.white.withOpacity(0.4),
                        ),
                        SizedBox(height: size.height * 0.1),
                        PrimaryButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          borderRadius: 6.0,
                          text: "PROCEED",
                          onTap: () {
                            if (_amountController.text.isNotEmpty) {
                              Navigator.of(context).pushNamed(
                                  ScreenNames.cryptoList,
                                  arguments: {
                                    'type': widget.type,
                                    'currency': _selectedCurrency,
                                    'amount': _amountController.text
                                  });
                            } else if (_amountController.text.isEmpty) {
                              'Enter valid amount'.showSnackBar(context);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container(
                  child: Center(
                    child: Text('Error Try Again'),
                  ),
                );
              }
            }));
  }
}

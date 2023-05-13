import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/model/currency/currency_model.dart';
import 'package:merchant_app/core/model/scan_me/card_scan_response_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/scan_me/scan_me_cubit/scan_me_cubit.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:barcode_scan2/model/model.dart';
import 'package:barcode_scan2/platform_wrapper.dart';

import '../../core/error/custom_error.dart';

class ScanMeScreen extends StatefulWidget {
  final String type;
  ScanMeScreen({Key? key,required this.type}) : super(key: key);

  @override
  State<ScanMeScreen> createState() => _ScanMeScreenState();
}

class _ScanMeScreenState extends State<ScanMeScreen> {
  final TextEditingController _amountController = TextEditingController();
  CardScanResponse? _cardScanResponse;
  List<CurrencyData>? currency = [];
  String _selectedCurrency = "USD";

  void initState() {
    getCurrencies();
    super.initState();
  }

  Future<void> getCurrencies() async {
    try {
      final Dio _dio = Dio();
      dynamic res = await _dio.get(
          '${Constants.baseURL}getcurrency',

      );
      dynamic result = jsonDecode(res.data);

      CurrencyModel model = CurrencyModel.fromJson(result);
      model.data!.forEach((cur) {
        currency?.add(cur);
      });
      CurrencyData newData = CurrencyData(name: "US Dollar",code: "USD");
      currency!.add(newData);
      setState(() {

      });


    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.primaryRed,
      body: BlocConsumer<ScanMeCubit, ScanMeState>(
        listener: (context, state) {
          if (state is SendOTPErrorState) {
            state.errorMessage.showSnackBar(context);
          } else if (state is SendOTPSucsssState) {
            state.message.showSnackBar(context);
            if (_cardScanResponse?.cardHash != null) {
              Navigator.of(context).pushNamed(
                ScreenNames.verifyOTPScreen,
                arguments: {
                  'cardScanResponse': _cardScanResponse,
                  'amount': _amountController.text,
                  'currency' : _selectedCurrency
                },
              );
            }
          }
        },
        builder: (context, state) {
          if (state is ScanMeLoadingState) {
            return LoadingScreen(loadingMessage: state.loadingMessage);
          } else {
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
                      title: 'Point Of Sale',
                      textColor: Colors.white,
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: size.height * 0.08),
                    const Text(
                      "BILL AMOUNT?",
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
                              child: DropdownButtonFormField<CurrencyData>(
                                dropdownColor: ColorName.primaryRed,
                                items:
                                currency!.map<DropdownMenuItem<CurrencyData>>((CurrencyData value) {
                                  return DropdownMenuItem<CurrencyData>(
                                    value: value,
                                    child: Text(
                                      "${value.code}",
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        color: _theme.colorScheme.onSecondary,
                                        fontSize: 22
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (CurrencyData? newValue) {
                                  setState(() {
                                    _selectedCurrency = newValue!.code!;
                                    print(_selectedCurrency);
                                  });
                                },
                                hint: Text(
                                  "USD",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: _theme.colorScheme.onSecondary,
                                    fontSize: 22
                                  ),
                                ),
                                decoration: InputDecoration.collapsed(hintText: ''),
                                iconEnabledColor: _theme.colorScheme.onSecondary,
                                iconDisabledColor: _theme.colorScheme.onSecondary,
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
                                hintStyle: TextStyle(
                                  color: Colors.white
                                )
                              ),
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
                    SizedBox(height: size.height * 0.5),
                    PrimaryButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      fontWeight: FontWeight.w500,
                      borderRadius: 6.0,
                      text: "PROCEED",
                      onTap: () {
                        if (_amountController.text.isNotEmpty) {
                          if(widget.type == 'barcode') {
                            _scanQRCode();
                          } else{
                              Navigator.of(context).pushNamed(ScreenNames.fiatTapMeScreen,arguments: {'currency':_selectedCurrency,'amount':_amountController.text});
                          }
                        } else {
                          'Enter valid amount'.showSnackBar(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Future<void> _scanQRCode() async {
    try {
      final ScanResult result = await BarcodeScanner.scan();
      debugPrint(" $result");
      print(result.rawContent);
      if (result.type.name == 'Barcode') {
        final result1 = jsonDecode(result.rawContent);
        if (result1 != null && result1 != '') {
          final model = CardScanResponse.fromJson(result1);
          if (model.cardHash != null) {
            _cardScanResponse = model;
            // ignore: use_build_context_synchronously
            await context
                .read<ScanMeCubit>()
                .sendOTP(cardHash: model.cardHash ?? '');
          }
        }
      } else if (result.type.name == 'Cancelled') {
        // ignore: use_build_context_synchronously
        'Scanner cancelled'.showSnackBar(context);
      }
    } catch (e) {
      'Invalid card details'.showSnackBar(context);
    }
  }
}

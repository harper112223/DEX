import 'dart:convert';

import 'package:barcode_scan2/model/model.dart';
import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/model/scan_me/card_scan_response_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/cash_out/cash_out_send_otp_cubit/cash_out_send_otp_cubit.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';

class CashOutScreen extends StatefulWidget {
  const CashOutScreen({Key? key}) : super(key: key);

  @override
  State<CashOutScreen> createState() => _CashOutScreenState();
}

class _CashOutScreenState extends State<CashOutScreen> {
  final TextEditingController _amountController = TextEditingController();
  CardScanResponse? _cardScanResponse;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorName.primaryRed,
      body: BlocConsumer<CashOutSendOTPCubit, CashOutSendOTPState>(
        listener: (context, state) {
          if (state is CashOutSendOTPErrorState) {
            state.errorMessage.showSnackBar(context);
          } else if (state is CashOutSendOTPSucsssState) {
            state.message.showSnackBar(context);
            if (_cardScanResponse?.cardHash != null) {
              Navigator.of(context).pushNamed(
                ScreenNames.cashOutVerifyOTPScreen,
                arguments: {
                  'cardScanResponse': _cardScanResponse,
                  'amount': _amountController.text,
                },
              );
            }
          }
        },
        builder: (context, state) {
          if (state is CashOutSendOTPLoadingState) {
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
                      title: 'Cash Out',
                      textColor: Colors.white,
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(height: size.height * 0.08),
                    const Text(
                      "CASH OUT AMOUNT?",
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
                          const Expanded(
                            flex: 2,
                            child: Text(
                              "\$",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
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
                              ),
                              cursorColor: ColorName.primaryRed,
                              controller: _amountController,
                              autofocus: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
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
                    SizedBox(height: size.height * 0.03),
                    PrimaryButton(
                      color: Colors.white,
                      textColor: Colors.black,
                      fontWeight: FontWeight.w500,
                      borderRadius: 6.0,
                      text: "PROCEED",
                      onTap: () {
                        if (_amountController.text.isNotEmpty) {
                          _scanQRCode();
                        } else {
                          'Enter Valid amount'.showSnackBar(context);
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
      if (result.type.name == 'Barcode') {
        final result1 = jsonDecode(result.rawContent);
        if (result1 != null && result1 != '') {
          final model = CardScanResponse.fromJson(result1);
          if (model.cardHash != null) {
            _cardScanResponse = model;
            // ignore: use_build_context_synchronously
            await context
                .read<CashOutSendOTPCubit>()
                .posSendOTPCash(cardHash: model.cardHash ?? '');
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

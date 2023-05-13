import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/model/scan_me/card_scan_response_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'cash_in_verify_otp_cubit/cash_in_verify_otp_cubit.dart';

class CashInVerifyOTPScreen extends StatefulWidget {
  final CardScanResponse cardScanResponse;
  final String amount;
  const CashInVerifyOTPScreen({
    Key? key,
    required this.cardScanResponse,
    required this.amount,
  }) : super(key: key);

  @override
  State<CashInVerifyOTPScreen> createState() => _CashInVerifyOTPScreenState();
}

class _CashInVerifyOTPScreenState extends State<CashInVerifyOTPScreen> {
  String _otpCode = "";
  final _otpNode = FocusNode();

  late String verificationId;
  late int forceResendToken;

  Timer? _timer;
  int _start = 15;

  @override
  void initState() {
    super.initState();
    startTimer();
    _otpNode.requestFocus();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer?.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: "Cash In Verify OTP",
        backgroundColor: ColorName.primaryRed,
        textColor: Colors.white,
      ),
      body: BlocConsumer<CashInVerifyOTPCubit, CashInVerifyOTPState>(
        buildWhen: (previous, current) {
          if (current is CashInVerifyOTPSucssState) {
            return false;
          } else {
            return true;
          }
        },
        listener: (context, state) {
          if (state is CashInVerifyOTPSucssState) {
            state.message.showSnackBar(context);
          } else if (state is CashOutPaymentFieldState) {
            state.errorMessage.showSnackBar(context);
            Navigator.of(context).pushNamed(
              ScreenNames.paymentErrorScreen,
              arguments: {'errorMessage': state.errorMessage},
            );
          } else if (state is CashInEmitSucssState) {
            state.message.showSnackBar(context);
            Navigator.of(context).pushNamed(
              ScreenNames.receiptScreen,
              arguments: {
                'posSellModel': state.model,
                'amount': widget.amount,
                'receiptType': 'DEPOSIT',
              },
            );
          } else if (state is CashInVerifyOTPErrorState) {
            setState(() => _otpCode = '');
            state.errorMessage.showSnackBar(context);
          } else if (state is CashInResendOTPSucsssState) {
            setState(() {
              _otpCode = '';
              _start = 15;
              startTimer();
            });
            state.message.showSnackBar(context);
          }
        },
        builder: (context, state) {
          if (state is VerifyCashInVerifyOTPLoadingState) {
            return LoadingScreen(loadingMessage: state.loadingMessage);
          } else {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 16.0),
                  Text(
                    "Enter code",
                    style: themeData.textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.08,
                    child: PinFieldAutoFill(
                      currentCode: _otpCode,
                      keyboardType: TextInputType.number,
                      autoFocus: true,
                      textInputAction: TextInputAction.done,
                      decoration: const UnderlineDecoration(
                        hintText: '000000',
                        hintTextStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: ColorName.primaryRed,
                        ),
                        colorBuilder: FixedColorBuilder(
                          Colors.transparent,
                        ),
                      ),
                      codeLength: 6,
                      onCodeSubmitted: (code) {
                        _otpCode = code;
                        debugPrint("onCodeSubmitted : $code");
                      },
                      onCodeChanged: (code) {
                        if (code != null) {
                          _otpCode = code;
                          if (code.length == 6) {
                            FocusScope.of(context).requestFocus(
                              FocusNode(),
                            );
                          }
                        }
                      },
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Don't receive OTP?",
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.black,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.w300,
                      ),
                      children: <TextSpan>[
                        _start <= 0
                            ? TextSpan(
                                text: ' Resent OTP',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    if (widget.cardScanResponse.cardHash !=
                                        null) {
                                      context
                                          .read<CashInVerifyOTPCubit>()
                                          .cashInResendOTP(
                                            cardHash: widget
                                                .cardScanResponse.cardHash!,
                                          );
                                    }
                                  },
                                style: const TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: ColorName.primaryRed,
                                  letterSpacing: 1.4,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            : TextSpan(
                                text: ' Wait for $_start sec',
                                style: const TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.red,
                                  letterSpacing: 1.4,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  PrimaryButton(
                    text: "Continue",
                    onTap: () {
                      if (_otpCode.length == 6) {
                        final year =
                            widget.cardScanResponse.expiration?.substring(2, 4);
                        final month =
                            widget.cardScanResponse.expiration?.substring(0, 2);
                        final cardHash = widget.cardScanResponse.cardHash;
                        final cvv = widget.cardScanResponse.cvv;

                        if (month != null ||
                            year != null ||
                            cardHash != null ||
                            cvv != null) {
                          context.read<CashInVerifyOTPCubit>().cashInVerifyOTP(
                                cardHash: cardHash!,
                                code: _otpCode,
                                amount: widget.amount,
                                cvv: cvv!,
                                month: month!,
                                year: year!,
                              );
                        }
                      }
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

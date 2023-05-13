
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/nfc/card_pin/crypto_receipt_screen.dart';
import 'package:merchant_app/src/nfc/card_pin/cubit/card_pin_cubit.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';

import 'package:sms_autofill/sms_autofill.dart';

class CryptoPinScreen extends StatefulWidget {

  final String amount;
  final String currency;
  final String code;
  final String cardhash;

  const CryptoPinScreen({
    Key? key,
    required this.amount,
    required this.currency,
    required this.code,
    required this.cardhash

  }) : super(key: key);

  @override
  _CryptoPinScreenState createState() => _CryptoPinScreenState();
}

class _CryptoPinScreenState extends State<CryptoPinScreen> {

  final TextEditingController _pinController = TextEditingController();
  String _otpCode = "";
  final _otpNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: "Verify PIN",
        backgroundColor: ColorName.primaryRed,
        textColor: Colors.white,
      ),
        body: BlocConsumer<CardPinCubit,CardPinState>(
            listener: (context, state) {
              if(state is CardPinSuccesstate){
                if(state.model.code == 200){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => CryptoReceiptScreen(payModel: state.model)), (route) => false);
                }else {
                  state.model.message!.showSnackBar(context);
                }
              }
            },
            builder:(context, state) {
              if(state is CardPinLoadingState){
                return LoadingScreen();
              }else {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      Text(
                        "Enter Pin",
                        style: _theme.textTheme.headline6!.copyWith(
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
                            hintText: '0000',
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
                          codeLength: 4,
                          onCodeSubmitted: (code) {
                            _otpCode = code;
                            debugPrint("onCodeSubmitted : $code");
                          },
                          onCodeChanged: (code) {
                            if (code != null) {
                              _otpCode = code;
                              if (code.length == 4) {
                                FocusScope.of(context).requestFocus(
                                  FocusNode(),
                                );
                              }
                            }
                          },
                        ),
                      ),
                      SizedBox(height: size.height * 0.06),
                      PrimaryButton(
                        text: "Continue",
                        onTap: () {
                          if (_otpCode.length == 4) {
                              context.read<CardPinCubit>().pay(code: widget.code,pin: _otpCode,currency: widget.currency,cardhash: widget.cardhash,amount: widget.amount);
                            } else if(_pinController.text.isEmpty){
                              'Enter valid pin'.showSnackBar(context);
                            }
                        },
                      ),
                    ],
                  ),
                );
              }

            }
        ));
  }


}

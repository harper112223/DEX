import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/model/scan_me/card_scan_response_model.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/scan_me/scan_me_cubit/scan_me_cubit.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';

import 'dart:convert';
import 'package:nfc_manager/nfc_manager.dart';

class TapMeScreen extends StatefulWidget {
  final String currency;
  final String amount;

  TapMeScreen({Key? key,required this.currency,required this.amount}) : super(key: key);

  @override
  State<TapMeScreen> createState() => _TapMeScreenState();
}

class _TapMeScreenState extends State<TapMeScreen> {
  final TextEditingController _amountController = TextEditingController();
  CardScanResponse? _cardScanResponse;


  void initState() {
    super.initState();
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      var ndef = Ndef.from(tag);
      var record = ndef!.cachedMessage!.records.first;
      final languageCodeLength = record.payload.first;
      final languageCode = ascii.decode(record.payload.sublist(1, 1 + languageCodeLength));
      final text = utf8.decode(record.payload.sublist(1 + languageCodeLength));
      final _cardResponse = json.decode(text);
      _cardScanResponse = CardScanResponse.fromJson(_cardResponse);
      if(_cardScanResponse!.cardHash! != null){
        context
            .read<ScanMeCubit>()
            .sendOTP(cardHash: _cardScanResponse!.cardHash!);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: "Tap To Pay",
          backgroundColor: ColorName.primaryRed,
          textColor: Colors.white,
      ),
      body: BlocConsumer<ScanMeCubit, ScanMeState>(
        listener: (context, state) {
          if (state is SendOTPErrorState) {
            state.errorMessage.showSnackBar(context);
            Navigator.pop(context);
          } else if (state is SendOTPSucsssState) {
            state.message.showSnackBar(context);
            if (_cardScanResponse?.cardHash != null) {
              Navigator.of(context).pushNamed(
                ScreenNames.verifyOTPScreen,
                arguments: {
                  'cardScanResponse': _cardScanResponse,
                  'amount': widget.amount,
                  'currency' : widget.currency
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
              color: Colors.white,
              child: Center(
                child: Lottie.asset(
                  Constants.tap2pay,
                  height: size.height * 0.4,
                  onLoaded: (composition) {},
                ),

              ),
            );
          }
        },
      ),
    );
  }


}

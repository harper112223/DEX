

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/nfc/card_pin/card_pin_screen.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/model/crypto_list_model.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:nfc_manager/nfc_manager.dart';


class NFCReadingScreen extends StatefulWidget {


  final String amount;
  final String currency;
  final String code;

  const NFCReadingScreen({
    Key? key,
    required this.amount,
    required this.currency,
    required this.code,
    
  }) : super(key: key);

  @override
  NFCReadingScreenState createState() => NFCReadingScreenState();
}

class NFCReadingScreenState extends State<NFCReadingScreen> {

  String text = "Reading Card";
  ValueNotifier<dynamic> result = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   Navigator.of(context).pushNamed(ScreenNames.cardPin,arguments : {'amount': widget.amount, 'currency': widget.currency, 'code': widget.code, 'cardhash': 'OTI0OTUxMTU4OTI3NTQ4NA=='});
    // });
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      var ndef = Ndef.from(tag);
      var record = ndef!.cachedMessage!.records.first;
      final languageCodeLength = record.payload.first;
      final languageCode = ascii.decode(record.payload.sublist(1, 1 + languageCodeLength));
      final text = utf8.decode(record.payload.sublist(1 + languageCodeLength));
      Navigator.of(context).pushNamed(ScreenNames.cardPin,arguments : {'amount': widget.amount, 'currency': widget.currency, 'code': widget.code, 'cardhash': text.toString()});

    });

  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        appBar: CustomAppBar(
            title: "NFC Reading",
            backgroundColor: ColorName.primaryRed,
            textColor: Colors.white,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          child: Center(
            child: Lottie.asset(
              Constants.tap2pay,
              height: _size.height * 0.4,
              onLoaded: (composition) {},
            ),
            ),
          ),
        );
  }

}
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



class CryptoScanScreen extends StatefulWidget {
  final String amount;
  final String currency;
  final String code;

  const CryptoScanScreen({
    Key? key,
    required this.amount,
    required this.currency,
    required this.code,

  }) : super(key: key);

  @override
  State<CryptoScanScreen> createState() => _CryptoScanScreenState();
}

class _CryptoScanScreenState extends State<CryptoScanScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scanQRCode();
    });
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorName.primaryRed,
      body: Container(
        child: Center(
          child: Text('Go Back'),
        ),
      )
    );
  }

  Future<void> _scanQRCode() async {
    try {
      final ScanResult result = await BarcodeScanner.scan();
      print(result.rawContent);
      Navigator.of(context).pushNamed(ScreenNames.cardPin,arguments : {'amount': widget.amount, 'currency': widget.currency, 'code': widget.code, 'cardhash': result.rawContent.toString()});
    } catch (e) {
      'Invalid card details'.showSnackBar(context);
    }
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/dio_http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/src/nfc/card_pin/model/crypto_pay_model.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/model/crypto_list_model.dart';

import 'package:merchant_app/src/nfc/nfc_currency/model/nfc_currency_model.dart';

class NFCRepository {
  final HttpService httpService;
  NFCRepository({required this.httpService});

  Future<NfcCurrencyModel> getCurrency() async {
    final path = "${Constants.baseURL}getcurrency";
    try {

      final response = await httpService.handleGetRequest(
          path,
          header: Header.none
      );

      final _result = json.decode(response.data);
      return NfcCurrencyModel.fromJson(_result);
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<CryptoListModel> getCryptoList() async {
    final path = "${Constants.baseURL}cryptolist";
    try {

      final response = await httpService.handleGetRequest(
          path,
          header: Header.headerWithParam
      );

      final _result = json.decode(response.data);
      print(_result);
      return CryptoListModel.fromJson(_result);
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<CryptoPayModel> pay({
    required String amount,
    required String currency,
    required String code,
    required String pin,
    required String cardhash
  }) async {
    final path = "${Constants.baseURL}taptopay";
    try {
      print(currency);
      final response = await httpService.payCrypto(
          path,
          currency: currency,
          code: code,
          amount: amount,
          pin: pin,
          cardhash: cardhash,
          header: Header.headerWithParam
      );

      final _result = json.decode(response.data);
      print(_result);
      return CryptoPayModel.fromJson(_result);

    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

}

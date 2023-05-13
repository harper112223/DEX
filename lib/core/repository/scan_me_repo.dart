import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/model/pos_verify/pos_verify_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/dio_http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class ScanMeRepository {
  final HttpService _httpService;
  ScanMeRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<PosSendModel> posSendOTP({required String cardHash}) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}send-otp',
        data: {"card_hash": cardHash},
      );
      final result = jsonDecode(response.data);
      final model = PosSendModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<PosVerifyModel> posVerifyOTP({
    required String cardHash,
    required String code,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}verify-otp',
        data: {"card_hash": cardHash, 'ver_code': code},
      );
      final result = jsonDecode(response.data);
      final model = PosVerifyModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<PosVerifyModel> getCurrencies() async {
    try {
      final response = await _httpService.handleGetRequest(
          '${Constants.baseURL}getcurrency',
          header: Header.none
      );
      final result = jsonDecode(response.data);
      final model = PosVerifyModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<PosSaleModel>  posSale({
    required String cardHash,
    required String month,
    required String year,
    required String amount,
    required String currency,
    required String cvv,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}pos-sale',
        data: {
          "card_hash": cardHash,
          'month': month,
          'amount': amount,
          'year': year,
          'cvv': cvv,
          'currency': currency
        },
      );
      final model = PosSaleModel.fromJson(response.data);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }
}

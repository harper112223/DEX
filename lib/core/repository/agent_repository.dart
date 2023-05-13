import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/login_model.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/model/pos_verify/pos_verify_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class AgentRepository {
  final HttpService _httpService;
  AgentRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<LoginModel> fees() async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}send-cashotp',
      );
      final result = jsonDecode(response.data);
      final model = LoginModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<PosSendModel> posSendOTPCash({required String cardHash}) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}send-cashotp',
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

  Future<PosVerifyModel> posVerifyOTPCash({
    required String cardHash,
    required String code,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}verify-cashotp',
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

  Future<PosSaleModel> posCashin({
    required String cardHash,
    required String month,
    required String year,
    required String amount,
    required String cvv,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}cashin',
        data: {
          "card_hash": cardHash,
          'month': month,
          'amount': amount,
          'year': year,
          'cvv': cvv,
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

  Future<PosSaleModel> posCashout({
    required String cardHash,
    required String month,
    required String year,
    required String amount,
    required String cvv,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}cashout',
        data: {
          "card_hash": cardHash,
          'month': month,
          'amount': amount,
          'year': year,
          'cvv': cvv,
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

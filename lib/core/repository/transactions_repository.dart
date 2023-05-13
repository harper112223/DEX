import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/transaction/transaction_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class TransactionsRepository {
  final HttpService _httpService;
  TransactionsRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<TransactionModel> walletTransactions({required String email}) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}wallet_transactions',
        data: {
          "user": {
            "email": email,
          }
        },
      );
      final result = jsonDecode(response.data);
      final model = TransactionModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/dashboard/dashboard_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class DashboardRepository {
  final HttpService _httpService;
  DashboardRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<DashboardModel> dashboard({required String email}) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}dashboard',
        data: {
          "user": {
            "email": email,
          },
        },
      );
      final result = jsonDecode(response.data);
      final model = DashboardModel.fromJson(result);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }
}

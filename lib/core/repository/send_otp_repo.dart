import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/login_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class SendOTPRepository {
  final HttpService _httpService;
  SendOTPRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<LoginModel> sendOTP({required String cardHash}) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}send-otp',
        data: {"card_hash": cardHash},
      );
      final model = LoginModel.fromJson(response.data);
      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }
}

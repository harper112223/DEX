import 'package:dio/dio.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/login_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';

class SaleRepository {
  final HttpService _httpService;
  SaleRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<LoginModel> sale({
    required String month,
    required String year,
    required String cardHash,
    required String amount,
    required String cvv,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}pos-sale',
        data: {
          "card_hash": cardHash,
          "month": month,
          "year": year,
          "amount": amount,
          "cvv": cvv,
        },
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

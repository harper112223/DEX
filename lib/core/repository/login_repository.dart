import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/login_model.dart';
import 'package:merchant_app/core/model/settings/profile_image_change_model.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/dio_http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';

class LoginRepository {
  final HttpService _httpService;
  LoginRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _httpService.handlePostRequest(
        '${Constants.baseURL}loginapp',
        data: {
          "user": {
            "email": email,
            "password": password,
          }
        },
        header: Header.headerWithoutParam,
      );
      final result = jsonDecode(response.data);
      final model = LoginModel.fromJson(result);
      if (model.result == 'success') {
        await MySharedPreferences().setStringValue(
          key: Constants.token,
          value: model.token,
        );
        await MySharedPreferences().setIntValue(
          key: Constants.isagent,
          value: model.user?.isagent ?? 0,
        );

        await MySharedPreferences().setStringValue(
          key: Constants.ewalletId,
          value: model.user?.ewalletId,
        );

        await MySharedPreferences().setStringValue(
          key: Constants.email,
          value: model.user?.email,
        );

        await MySharedPreferences().setStringValue(
          key: Constants.password,
          value: password,
        );

        await MySharedPreferences().setIntValue(
          key: Constants.userId,
          value: model.user?.ids,
        );
      }

      return model;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<ProfileImageChangeModel> changeProfileImage({
    required XFile file,
    required String keyName,
  }) async {
    const path = "${Constants.baseURL}profile-image";
    try {
      final response = await _httpService.handlePostForImageRequest(
        path,
        file: file,
        keyName: keyName,
      );
      if (response.statusCode! >= 200 && response.statusCode! <= 300) {
        final result = ProfileImageChangeModel.fromJson(response.data);
        if (result.code != null && result.code != 400) {
          return result;
        } else {
          throw CustomError(
            code: '${result.code}',
            message: result.message?.error?.last?[1].toString() ??
                'Something went wrong',
          );
        }
      } else {
        throw CustomError(
          code: '${response.statusCode}',
          message: response.data,
        );
      }
    } catch (e) {
      final CustomError error = e as CustomError;
      throw error;
    }
  }
}

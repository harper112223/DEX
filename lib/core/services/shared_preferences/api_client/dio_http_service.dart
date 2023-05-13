import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/repository/login_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'http_service.dart';

enum Header { headerWithParam, headerWithoutParam,none }

class DioHttpService implements HttpService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>?> _getHeader(Header header) async {
    if (header == Header.headerWithParam) {
      final getEmail =
          await MySharedPreferences().getStringValue(Constants.email);
      final getPassword =
          await MySharedPreferences().getStringValue(Constants.password);

      await GetIt.I<LoginRepository>().login(
        email: getEmail,
        password: getPassword,
      );

      final getTotoken =
          await MySharedPreferences().getStringValue(Constants.token);

      final getEwalletid =
          await MySharedPreferences().getStringValue(Constants.ewalletId);

      final getUserId =
          await MySharedPreferences().getIntValue(Constants.userId);

      final Map<String, dynamic> headerWithParam = {
        'API-KEY': Constants.apiKey,
        'token': getTotoken,
        'email': getEmail,
        'ewalletid': getEwalletid,
        'user_id': getUserId,
      };
      return headerWithParam;
    } else if(header == Header.none){

    }else{
      final header = {'API-KEY': Constants.apiKey};
      return header;
    }
  }

  @override
  Future<Response> handleGetRequest(
    String path, {
    Header header = Header.headerWithParam,
  }) async {
    final headers = await _getHeader(header);
    final res = await _dio.get(
      path,
      options: Options(
        headers: headers,
      ),
    );
    return res;
  }

  @override
  Future<Response> handlePostRequest(
    String path, {
    Header header = Header.headerWithParam,
    Map<String, dynamic>? data,
  }) async {
    final headers = await _getHeader(header);
    var res = await _dio.post(
      path,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return res;
  }

  @override
  Future<Response> handlePutRequest(
    String path, {
    Header header = Header.headerWithParam,
    Map<String, dynamic>? data,
  }) async {
    final headers = await _getHeader(header);
    var res = await _dio.put(
      path,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return res;
  }

  @override
  Future<Response> handleDeleteRequest(
    String path, {
    Header header = Header.headerWithParam,
  }) async {
    final headers = await _getHeader(header);
    return _dio.delete(
      path,
      options: Options(
        headers: headers,
      ),
    );
  }

  @override
  Future<Response> handlePostForImageRequest(
    String path, {
    required XFile file,
    required String keyName,
    Header header = Header.headerWithParam,
  }) async {
    String fileName = file.path.split('/').last;
    String filePath = file.path;
    final headers = await _getHeader(header);
    FormData formData = FormData.fromMap({
      keyName: await MultipartFile.fromFile(
        filePath,
        filename: fileName,
      ),
    });
    Response response = await _dio.post(
      path,
      data: formData,
      options: Options(headers: headers),
    );
    return response;
  }

  @override
  Future<Response> payCrypto(
      String path, {
        required String code,
        required String amount,
        required String currency,
        required String cardhash,
        required String pin,
        Header header = Header.headerWithParam,
      }) async {

    final headers = await _getHeader(header);
    FormData formData = FormData.fromMap({
      'cryptoid' : code,
      'cardhash' : cardhash,
      'pin' : pin,
      'amount':amount,
      'currency': currency
    });
    Response response = await _dio.post(
      path,
      data: formData,
      options: Options(headers: headers),
    );
    return response;
  }
}

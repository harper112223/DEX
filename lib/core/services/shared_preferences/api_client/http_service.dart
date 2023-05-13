import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import 'dio_http_service.dart';

abstract class HttpService {
  Future<Response> handleGetRequest(String path,
      {Header header = Header.headerWithParam});

  Future<Response> handlePostRequest(
    String path, {
    Header header = Header.headerWithParam,
    Map<String, dynamic>? data,
  });

  Future<Response> handlePutRequest(
    String path, {
    Header header = Header.headerWithParam,
    Map<String, dynamic>? data,
  });

  Future<Response> handleDeleteRequest(
    String path, {
    Header header = Header.headerWithParam,
  });

  Future<Response> handlePostForImageRequest(
    String path, {
    required XFile file,
    required String keyName,
    Header header = Header.headerWithParam,
  });

  Future<Response> payCrypto(
      String path, {
        required String code,
        required String amount,
        required String currency,
        required String cardhash,
        required String pin,
        Header header = Header.headerWithParam,
      });
}

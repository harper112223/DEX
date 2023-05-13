import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_model.freezed.dart';
part 'crypto_list_model.g.dart';

@freezed
abstract class CryptoListModel with _$CryptoListModel {
  const factory CryptoListModel(
      String? result,
      String? message,
      int code,
      List<Data> data,

      ) = _CryptoListModel;

  factory CryptoListModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoListModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data(

      int id,
      String? name,
      String? code,
      String? symbol,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}



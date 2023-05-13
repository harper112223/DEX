import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_currency_model.freezed.dart';
part 'nfc_currency_model.g.dart';

@freezed
abstract class NfcCurrencyModel with _$NfcCurrencyModel {
  const factory NfcCurrencyModel(
      String? result,
      int code,
      List<Data> data,


      ) = _NfcCurrencyModel;

  factory NfcCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$NfcCurrencyModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data(
      String name,
      String code,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

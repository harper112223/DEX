// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    int? code,
    List<CurrencyData>? data,
    String? result,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}

@freezed
class CurrencyData with _$CurrencyData {
  const factory CurrencyData({
    String? name,
    String? code,
  }) = _CurrencyData;

  factory CurrencyData.fromJson(Map<String, dynamic> json) => _$CurrencyDataFromJson(json);
}

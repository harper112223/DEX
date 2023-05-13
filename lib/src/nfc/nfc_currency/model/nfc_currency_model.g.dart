// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfc_currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NfcCurrencyModel _$$_NfcCurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_NfcCurrencyModel(
      json['result'] as String?,
      json['code'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NfcCurrencyModelToJson(_$_NfcCurrencyModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['name'] as String,
      json['code'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

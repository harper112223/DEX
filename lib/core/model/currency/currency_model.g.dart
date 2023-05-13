// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyModel(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CurrencyData.fromJson(e as Map<String, dynamic>))
          .toList(),
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'result': instance.result,
    };

_$_CurrencyData _$$_CurrencyDataFromJson(Map<String, dynamic> json) =>
    _$_CurrencyData(
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_CurrencyDataToJson(_$_CurrencyData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

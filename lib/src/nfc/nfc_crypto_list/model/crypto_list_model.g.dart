// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoListModel _$$_CryptoListModelFromJson(Map<String, dynamic> json) =>
    _$_CryptoListModel(
      json['result'] as String?,
      json['message'] as String?,
      json['code'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CryptoListModelToJson(_$_CryptoListModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['id'] as int,
      json['name'] as String?,
      json['code'] as String?,
      json['symbol'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'symbol': instance.symbol,
    };

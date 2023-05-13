// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileImageChangeModel _$$_ProfileImageChangeModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileImageChangeModel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileImageChangeModelToJson(
        _$_ProfileImageChangeModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_scan_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardScanResponse _$$_CardScanResponseFromJson(Map<String, dynamic> json) =>
    _$_CardScanResponse(
      cardHash: json['card_hash'] as String?,
      cvv: json['cvv'] as String?,
      expiration: json['expiration'] as String?,
      nameOnCard: json['name_on_card'] as String?,
    );

Map<String, dynamic> _$$_CardScanResponseToJson(_$_CardScanResponse instance) =>
    <String, dynamic>{
      'card_hash': instance.cardHash,
      'cvv': instance.cvv,
      'expiration': instance.expiration,
      'name_on_card': instance.nameOnCard,
    };

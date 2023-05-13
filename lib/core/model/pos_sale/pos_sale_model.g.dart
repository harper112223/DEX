// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PosSaleModel _$$_PosSaleModelFromJson(Map<String, dynamic> json) =>
    _$_PosSaleModel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$_PosSaleModelToJson(_$_PosSaleModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'result': instance.result,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      transactionId: json['Transaction id'] as String?,
      cardMasked: json['card_masked'] as String?,
      nameOnCard: json['name_on_card'] as String?,
      cardType: json['card_type'] as String?,
      merchantName: json['merchant_name'] as String?,
      merchantId: json['merchant_id'] as String?,
      merchantLogo: json['merchant_logo'] as String?,
      merchantAddress: json['merchant_address'] == null
          ? null
          : MerchantAddress.fromJson(
              json['merchant_address'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      disclaimer: json['disclaimer'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'Transaction id': instance.transactionId,
      'card_masked': instance.cardMasked,
      'name_on_card': instance.nameOnCard,
      'card_type': instance.cardType,
      'merchant_name': instance.merchantName,
      'merchant_id': instance.merchantId,
      'merchant_logo': instance.merchantLogo,
      'merchant_address': instance.merchantAddress,
      'date': instance.date?.toIso8601String(),
      'disclaimer': instance.disclaimer,
    };

_$_MerchantAddress _$$_MerchantAddressFromJson(Map<String, dynamic> json) =>
    _$_MerchantAddress(
      address: json['address'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$_MerchantAddressToJson(_$_MerchantAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'state': instance.state,
      'zip': instance.zip,
      'country': instance.country,
      'city': instance.city,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      success: (json['success'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as String?).toList())
          .toList(),
      error: (json['error'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)?.map((e) => e as String?).toList())
          .toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
    };

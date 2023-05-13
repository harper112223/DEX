// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      result: json['result'] as String?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String?,
      email: json['email'] as String?,
      ewalletId: json['ewallet_id'] as String?,
      ids: json['ids'] as int?,
      phoneNumber: json['phone_number'] as String?,
      cardId: json['card_id'] as String?,
      type: json['type'] as String?,
      entityType: json['entity_type'] as String?,
      merchantId: json['merchant_id'] as String?,
      merchantLogo: json['merchant_logo'] as String?,
      isagent: json['isagent'] as int?,
      merchantAddress: json['merchant_address'] == null
          ? null
          : MerchantAddress.fromJson(
              json['merchant_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'ewallet_id': instance.ewalletId,
      'ids': instance.ids,
      'phone_number': instance.phoneNumber,
      'card_id': instance.cardId,
      'type': instance.type,
      'entity_type': instance.entityType,
      'merchant_id': instance.merchantId,
      'merchant_logo': instance.merchantLogo,
      'isagent': instance.isagent,
      'merchant_address': instance.merchantAddress,
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

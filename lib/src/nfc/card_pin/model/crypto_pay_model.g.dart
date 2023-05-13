// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoPayModel _$$_CryptoPayModelFromJson(Map<String, dynamic> json) =>
    _$_CryptoPayModel(
      json['result'] as String?,
      json['message'] as String?,
      json['code'] as int,
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CryptoPayModelToJson(_$_CryptoPayModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      currency: json['currency'] as String?,
      fiatamount: json['fiatamount'] as String?,
      crypto: json['crypto'] as String?,
      cryptoamount: (json['cryptoamount'] as num?)?.toDouble(),
      transactionId: json['txid'] as String?,
      cardMasked: json['card_masked'] as String?,
      nameOnCard: json['name_on_card'] as String?,
      cardType: json['card_type'] as String?,
      merchantName: json['merchant_name'] as String?,
      merchantId: json['merchant_id'] as String?,
      merchantLogo: json['merchant_logo'] as String?,
      merchantAddress: json['merchant_address'] == null
          ? null
          : Address.fromJson(json['merchant_address'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      disclaimer: json['disclaimer'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'currency': instance.currency,
      'fiatamount': instance.fiatamount,
      'crypto': instance.crypto,
      'cryptoamount': instance.cryptoamount,
      'txid': instance.transactionId,
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

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      address: json['address'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'address': instance.address,
      'state': instance.state,
      'zip': instance.zip,
      'country': instance.country,
      'city': instance.city,
    };

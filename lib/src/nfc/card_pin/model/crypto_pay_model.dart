import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_pay_model.freezed.dart';
part 'crypto_pay_model.g.dart';

@freezed
abstract class CryptoPayModel with _$CryptoPayModel {
  const factory CryptoPayModel(
      String? result,
      String? message,
      int code,
      Data? data,
      ) = _CryptoPayModel;

  factory CryptoPayModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoPayModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? currency,
    String? fiatamount,
    String? crypto,
    double? cryptoamount,
    @JsonKey(name: 'txid') String? transactionId,
    @JsonKey(name: 'card_masked') String? cardMasked,
    @JsonKey(name: 'name_on_card') String? nameOnCard,
    @JsonKey(name: 'card_type') String? cardType,
    @JsonKey(name: 'merchant_name') String? merchantName,
    @JsonKey(name: 'merchant_id') String? merchantId,
    @JsonKey(name: 'merchant_logo') String? merchantLogo,
    @JsonKey(name: 'merchant_address') Address? merchantAddress,
    @JsonKey(name: 'date') DateTime? date,
    String? disclaimer,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? address,
    String? state,
    String? zip,
    String? country,
    String? city,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}




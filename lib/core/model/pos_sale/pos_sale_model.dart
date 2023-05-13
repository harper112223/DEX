// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_sale_model.freezed.dart';
part 'pos_sale_model.g.dart';

@freezed
class PosSaleModel with _$PosSaleModel {
  const factory PosSaleModel({
    int? code,
    String? status,
    Message? message,
    Data? data,
    String? result,
  }) = _PosSaleModel;

  factory PosSaleModel.fromJson(Map<String, dynamic> json) =>
      _$PosSaleModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'Transaction id') String? transactionId,
    @JsonKey(name: 'card_masked') String? cardMasked,
    @JsonKey(name: 'name_on_card') String? nameOnCard,
    @JsonKey(name: 'card_type') String? cardType,
    @JsonKey(name: 'merchant_name') String? merchantName,
    @JsonKey(name: 'merchant_id') String? merchantId,
    @JsonKey(name: 'merchant_logo') String? merchantLogo,
    @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress,
    @JsonKey(name: 'date') DateTime? date,
    String? disclaimer,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class MerchantAddress with _$MerchantAddress {
  const factory MerchantAddress({
    String? address,
    String? state,
    String? zip,
    String? country,
    String? city,
  }) = _MerchantAddress;

  factory MerchantAddress.fromJson(Map<String, dynamic> json) =>
      _$MerchantAddressFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    List<List<String?>?>? success,
    List<List<String?>?>? error,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

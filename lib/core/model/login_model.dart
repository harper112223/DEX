// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({
    String? result,
    String? message,
    String? token,
    User? user,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? email,
    @JsonKey(name: 'ewallet_id') String? ewalletId,
    int? ids,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'card_id') String? cardId,
    String? type,
    @JsonKey(name: 'entity_type') String? entityType,
    @JsonKey(name: 'merchant_id') String? merchantId,
    @JsonKey(name: 'merchant_logo') String? merchantLogo,
    @JsonKey(name: 'isagent') int? isagent,
    @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
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

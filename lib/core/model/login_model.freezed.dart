// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call({String? result, String? message, String? token, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginModelCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$_LoginModelCopyWith(
          _$_LoginModel value, $Res Function(_$_LoginModel) then) =
      __$$_LoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, String? message, String? token, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginModelCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$_LoginModel>
    implements _$$_LoginModelCopyWith<$Res> {
  __$$_LoginModelCopyWithImpl(
      _$_LoginModel _value, $Res Function(_$_LoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_LoginModel(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModel implements _LoginModel {
  _$_LoginModel({this.result, this.message, this.token, this.user});

  factory _$_LoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelFromJson(json);

  @override
  final String? result;
  @override
  final String? message;
  @override
  final String? token;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginModel(result: $result, message: $message, token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      __$$_LoginModelCopyWithImpl<_$_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelToJson(
      this,
    );
  }
}

abstract class _LoginModel implements LoginModel {
  factory _LoginModel(
      {final String? result,
      final String? message,
      final String? token,
      final User? user}) = _$_LoginModel;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$_LoginModel.fromJson;

  @override
  String? get result;
  @override
  String? get message;
  @override
  String? get token;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginModelCopyWith<_$_LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  int? get ids => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_id')
  String? get cardId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  String? get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_logo')
  String? get merchantLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'isagent')
  int? get isagent => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_address')
  MerchantAddress? get merchantAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? name,
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
      @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress});

  $MerchantAddressCopyWith<$Res>? get merchantAddress;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? ewalletId = freezed,
    Object? ids = freezed,
    Object? phoneNumber = freezed,
    Object? cardId = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? merchantId = freezed,
    Object? merchantLogo = freezed,
    Object? isagent = freezed,
    Object? merchantAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId: freezed == ewalletId
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: freezed == merchantLogo
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      isagent: freezed == isagent
          ? _value.isagent
          : isagent // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as MerchantAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantAddressCopyWith<$Res>? get merchantAddress {
    if (_value.merchantAddress == null) {
      return null;
    }

    return $MerchantAddressCopyWith<$Res>(_value.merchantAddress!, (value) {
      return _then(_value.copyWith(merchantAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
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
      @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress});

  @override
  $MerchantAddressCopyWith<$Res>? get merchantAddress;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? ewalletId = freezed,
    Object? ids = freezed,
    Object? phoneNumber = freezed,
    Object? cardId = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? merchantId = freezed,
    Object? merchantLogo = freezed,
    Object? isagent = freezed,
    Object? merchantAddress = freezed,
  }) {
    return _then(_$_User(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId: freezed == ewalletId
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: freezed == merchantLogo
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      isagent: freezed == isagent
          ? _value.isagent
          : isagent // ignore: cast_nullable_to_non_nullable
              as int?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as MerchantAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.name,
      this.email,
      @JsonKey(name: 'ewallet_id') this.ewalletId,
      this.ids,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'card_id') this.cardId,
      this.type,
      @JsonKey(name: 'entity_type') this.entityType,
      @JsonKey(name: 'merchant_id') this.merchantId,
      @JsonKey(name: 'merchant_logo') this.merchantLogo,
      @JsonKey(name: 'isagent') this.isagent,
      @JsonKey(name: 'merchant_address') this.merchantAddress});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'ewallet_id')
  final String? ewalletId;
  @override
  final int? ids;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'card_id')
  final String? cardId;
  @override
  final String? type;
  @override
  @JsonKey(name: 'entity_type')
  final String? entityType;
  @override
  @JsonKey(name: 'merchant_id')
  final String? merchantId;
  @override
  @JsonKey(name: 'merchant_logo')
  final String? merchantLogo;
  @override
  @JsonKey(name: 'isagent')
  final int? isagent;
  @override
  @JsonKey(name: 'merchant_address')
  final MerchantAddress? merchantAddress;

  @override
  String toString() {
    return 'User(name: $name, email: $email, ewalletId: $ewalletId, ids: $ids, phoneNumber: $phoneNumber, cardId: $cardId, type: $type, entityType: $entityType, merchantId: $merchantId, merchantLogo: $merchantLogo, isagent: $isagent, merchantAddress: $merchantAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ewalletId, ewalletId) ||
                other.ewalletId == ewalletId) &&
            (identical(other.ids, ids) || other.ids == ids) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantLogo, merchantLogo) ||
                other.merchantLogo == merchantLogo) &&
            (identical(other.isagent, isagent) || other.isagent == isagent) &&
            (identical(other.merchantAddress, merchantAddress) ||
                other.merchantAddress == merchantAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      ewalletId,
      ids,
      phoneNumber,
      cardId,
      type,
      entityType,
      merchantId,
      merchantLogo,
      isagent,
      merchantAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? name,
      final String? email,
      @JsonKey(name: 'ewallet_id')
          final String? ewalletId,
      final int? ids,
      @JsonKey(name: 'phone_number')
          final String? phoneNumber,
      @JsonKey(name: 'card_id')
          final String? cardId,
      final String? type,
      @JsonKey(name: 'entity_type')
          final String? entityType,
      @JsonKey(name: 'merchant_id')
          final String? merchantId,
      @JsonKey(name: 'merchant_logo')
          final String? merchantLogo,
      @JsonKey(name: 'isagent')
          final int? isagent,
      @JsonKey(name: 'merchant_address')
          final MerchantAddress? merchantAddress}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId;
  @override
  int? get ids;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'card_id')
  String? get cardId;
  @override
  String? get type;
  @override
  @JsonKey(name: 'entity_type')
  String? get entityType;
  @override
  @JsonKey(name: 'merchant_id')
  String? get merchantId;
  @override
  @JsonKey(name: 'merchant_logo')
  String? get merchantLogo;
  @override
  @JsonKey(name: 'isagent')
  int? get isagent;
  @override
  @JsonKey(name: 'merchant_address')
  MerchantAddress? get merchantAddress;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

MerchantAddress _$MerchantAddressFromJson(Map<String, dynamic> json) {
  return _MerchantAddress.fromJson(json);
}

/// @nodoc
mixin _$MerchantAddress {
  String? get address => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantAddressCopyWith<MerchantAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantAddressCopyWith<$Res> {
  factory $MerchantAddressCopyWith(
          MerchantAddress value, $Res Function(MerchantAddress) then) =
      _$MerchantAddressCopyWithImpl<$Res, MerchantAddress>;
  @useResult
  $Res call(
      {String? address,
      String? state,
      String? zip,
      String? country,
      String? city});
}

/// @nodoc
class _$MerchantAddressCopyWithImpl<$Res, $Val extends MerchantAddress>
    implements $MerchantAddressCopyWith<$Res> {
  _$MerchantAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MerchantAddressCopyWith<$Res>
    implements $MerchantAddressCopyWith<$Res> {
  factory _$$_MerchantAddressCopyWith(
          _$_MerchantAddress value, $Res Function(_$_MerchantAddress) then) =
      __$$_MerchantAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address,
      String? state,
      String? zip,
      String? country,
      String? city});
}

/// @nodoc
class __$$_MerchantAddressCopyWithImpl<$Res>
    extends _$MerchantAddressCopyWithImpl<$Res, _$_MerchantAddress>
    implements _$$_MerchantAddressCopyWith<$Res> {
  __$$_MerchantAddressCopyWithImpl(
      _$_MerchantAddress _value, $Res Function(_$_MerchantAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_MerchantAddress(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MerchantAddress implements _MerchantAddress {
  const _$_MerchantAddress(
      {this.address, this.state, this.zip, this.country, this.city});

  factory _$_MerchantAddress.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantAddressFromJson(json);

  @override
  final String? address;
  @override
  final String? state;
  @override
  final String? zip;
  @override
  final String? country;
  @override
  final String? city;

  @override
  String toString() {
    return 'MerchantAddress(address: $address, state: $state, zip: $zip, country: $country, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MerchantAddress &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, state, zip, country, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MerchantAddressCopyWith<_$_MerchantAddress> get copyWith =>
      __$$_MerchantAddressCopyWithImpl<_$_MerchantAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantAddressToJson(
      this,
    );
  }
}

abstract class _MerchantAddress implements MerchantAddress {
  const factory _MerchantAddress(
      {final String? address,
      final String? state,
      final String? zip,
      final String? country,
      final String? city}) = _$_MerchantAddress;

  factory _MerchantAddress.fromJson(Map<String, dynamic> json) =
      _$_MerchantAddress.fromJson;

  @override
  String? get address;
  @override
  String? get state;
  @override
  String? get zip;
  @override
  String? get country;
  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$_MerchantAddressCopyWith<_$_MerchantAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

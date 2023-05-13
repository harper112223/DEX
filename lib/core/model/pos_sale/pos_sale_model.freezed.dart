// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PosSaleModel _$PosSaleModelFromJson(Map<String, dynamic> json) {
  return _PosSaleModel.fromJson(json);
}

/// @nodoc
mixin _$PosSaleModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosSaleModelCopyWith<PosSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosSaleModelCopyWith<$Res> {
  factory $PosSaleModelCopyWith(
          PosSaleModel value, $Res Function(PosSaleModel) then) =
      _$PosSaleModelCopyWithImpl<$Res, PosSaleModel>;
  @useResult
  $Res call(
      {int? code,
      String? status,
      Message? message,
      Data? data,
      String? result});

  $MessageCopyWith<$Res>? get message;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PosSaleModelCopyWithImpl<$Res, $Val extends PosSaleModel>
    implements $PosSaleModelCopyWith<$Res> {
  _$PosSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PosSaleModelCopyWith<$Res>
    implements $PosSaleModelCopyWith<$Res> {
  factory _$$_PosSaleModelCopyWith(
          _$_PosSaleModel value, $Res Function(_$_PosSaleModel) then) =
      __$$_PosSaleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? status,
      Message? message,
      Data? data,
      String? result});

  @override
  $MessageCopyWith<$Res>? get message;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PosSaleModelCopyWithImpl<$Res>
    extends _$PosSaleModelCopyWithImpl<$Res, _$_PosSaleModel>
    implements _$$_PosSaleModelCopyWith<$Res> {
  __$$_PosSaleModelCopyWithImpl(
      _$_PosSaleModel _value, $Res Function(_$_PosSaleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_PosSaleModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PosSaleModel implements _PosSaleModel {
  const _$_PosSaleModel(
      {this.code, this.status, this.message, this.data, this.result});

  factory _$_PosSaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_PosSaleModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final Message? message;
  @override
  final Data? data;
  @override
  final String? result;

  @override
  String toString() {
    return 'PosSaleModel(code: $code, status: $status, message: $message, data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosSaleModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, status, message, data, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PosSaleModelCopyWith<_$_PosSaleModel> get copyWith =>
      __$$_PosSaleModelCopyWithImpl<_$_PosSaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosSaleModelToJson(
      this,
    );
  }
}

abstract class _PosSaleModel implements PosSaleModel {
  const factory _PosSaleModel(
      {final int? code,
      final String? status,
      final Message? message,
      final Data? data,
      final String? result}) = _$_PosSaleModel;

  factory _PosSaleModel.fromJson(Map<String, dynamic> json) =
      _$_PosSaleModel.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  Message? get message;
  @override
  Data? get data;
  @override
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$_PosSaleModelCopyWith<_$_PosSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'Transaction id')
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_masked')
  String? get cardMasked => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_on_card')
  String? get nameOnCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_type')
  String? get cardType => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_name')
  String? get merchantName => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_id')
  String? get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_logo')
  String? get merchantLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_address')
  MerchantAddress? get merchantAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  String? get disclaimer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Transaction id') String? transactionId,
      @JsonKey(name: 'card_masked') String? cardMasked,
      @JsonKey(name: 'name_on_card') String? nameOnCard,
      @JsonKey(name: 'card_type') String? cardType,
      @JsonKey(name: 'merchant_name') String? merchantName,
      @JsonKey(name: 'merchant_id') String? merchantId,
      @JsonKey(name: 'merchant_logo') String? merchantLogo,
      @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress,
      @JsonKey(name: 'date') DateTime? date,
      String? disclaimer});

  $MerchantAddressCopyWith<$Res>? get merchantAddress;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? cardMasked = freezed,
    Object? nameOnCard = freezed,
    Object? cardType = freezed,
    Object? merchantName = freezed,
    Object? merchantId = freezed,
    Object? merchantLogo = freezed,
    Object? merchantAddress = freezed,
    Object? date = freezed,
    Object? disclaimer = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardMasked: freezed == cardMasked
          ? _value.cardMasked
          : cardMasked // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOnCard: freezed == nameOnCard
          ? _value.nameOnCard
          : nameOnCard // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: freezed == merchantLogo
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as MerchantAddress?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      disclaimer: freezed == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Transaction id') String? transactionId,
      @JsonKey(name: 'card_masked') String? cardMasked,
      @JsonKey(name: 'name_on_card') String? nameOnCard,
      @JsonKey(name: 'card_type') String? cardType,
      @JsonKey(name: 'merchant_name') String? merchantName,
      @JsonKey(name: 'merchant_id') String? merchantId,
      @JsonKey(name: 'merchant_logo') String? merchantLogo,
      @JsonKey(name: 'merchant_address') MerchantAddress? merchantAddress,
      @JsonKey(name: 'date') DateTime? date,
      String? disclaimer});

  @override
  $MerchantAddressCopyWith<$Res>? get merchantAddress;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? cardMasked = freezed,
    Object? nameOnCard = freezed,
    Object? cardType = freezed,
    Object? merchantName = freezed,
    Object? merchantId = freezed,
    Object? merchantLogo = freezed,
    Object? merchantAddress = freezed,
    Object? date = freezed,
    Object? disclaimer = freezed,
  }) {
    return _then(_$_Data(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardMasked: freezed == cardMasked
          ? _value.cardMasked
          : cardMasked // ignore: cast_nullable_to_non_nullable
              as String?,
      nameOnCard: freezed == nameOnCard
          ? _value.nameOnCard
          : nameOnCard // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: freezed == merchantLogo
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as MerchantAddress?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      disclaimer: freezed == disclaimer
          ? _value.disclaimer
          : disclaimer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {@JsonKey(name: 'Transaction id') this.transactionId,
      @JsonKey(name: 'card_masked') this.cardMasked,
      @JsonKey(name: 'name_on_card') this.nameOnCard,
      @JsonKey(name: 'card_type') this.cardType,
      @JsonKey(name: 'merchant_name') this.merchantName,
      @JsonKey(name: 'merchant_id') this.merchantId,
      @JsonKey(name: 'merchant_logo') this.merchantLogo,
      @JsonKey(name: 'merchant_address') this.merchantAddress,
      @JsonKey(name: 'date') this.date,
      this.disclaimer});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: 'Transaction id')
  final String? transactionId;
  @override
  @JsonKey(name: 'card_masked')
  final String? cardMasked;
  @override
  @JsonKey(name: 'name_on_card')
  final String? nameOnCard;
  @override
  @JsonKey(name: 'card_type')
  final String? cardType;
  @override
  @JsonKey(name: 'merchant_name')
  final String? merchantName;
  @override
  @JsonKey(name: 'merchant_id')
  final String? merchantId;
  @override
  @JsonKey(name: 'merchant_logo')
  final String? merchantLogo;
  @override
  @JsonKey(name: 'merchant_address')
  final MerchantAddress? merchantAddress;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  final String? disclaimer;

  @override
  String toString() {
    return 'Data(transactionId: $transactionId, cardMasked: $cardMasked, nameOnCard: $nameOnCard, cardType: $cardType, merchantName: $merchantName, merchantId: $merchantId, merchantLogo: $merchantLogo, merchantAddress: $merchantAddress, date: $date, disclaimer: $disclaimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.cardMasked, cardMasked) ||
                other.cardMasked == cardMasked) &&
            (identical(other.nameOnCard, nameOnCard) ||
                other.nameOnCard == nameOnCard) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantLogo, merchantLogo) ||
                other.merchantLogo == merchantLogo) &&
            (identical(other.merchantAddress, merchantAddress) ||
                other.merchantAddress == merchantAddress) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.disclaimer, disclaimer) ||
                other.disclaimer == disclaimer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionId,
      cardMasked,
      nameOnCard,
      cardType,
      merchantName,
      merchantId,
      merchantLogo,
      merchantAddress,
      date,
      disclaimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: 'Transaction id') final String? transactionId,
      @JsonKey(name: 'card_masked') final String? cardMasked,
      @JsonKey(name: 'name_on_card') final String? nameOnCard,
      @JsonKey(name: 'card_type') final String? cardType,
      @JsonKey(name: 'merchant_name') final String? merchantName,
      @JsonKey(name: 'merchant_id') final String? merchantId,
      @JsonKey(name: 'merchant_logo') final String? merchantLogo,
      @JsonKey(name: 'merchant_address') final MerchantAddress? merchantAddress,
      @JsonKey(name: 'date') final DateTime? date,
      final String? disclaimer}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'Transaction id')
  String? get transactionId;
  @override
  @JsonKey(name: 'card_masked')
  String? get cardMasked;
  @override
  @JsonKey(name: 'name_on_card')
  String? get nameOnCard;
  @override
  @JsonKey(name: 'card_type')
  String? get cardType;
  @override
  @JsonKey(name: 'merchant_name')
  String? get merchantName;
  @override
  @JsonKey(name: 'merchant_id')
  String? get merchantId;
  @override
  @JsonKey(name: 'merchant_logo')
  String? get merchantLogo;
  @override
  @JsonKey(name: 'merchant_address')
  MerchantAddress? get merchantAddress;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  String? get disclaimer;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
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

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  List<List<String?>?>? get success => throw _privateConstructorUsedError;
  List<List<String?>?>? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({List<List<String?>?>? success, List<List<String?>?>? error});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<List<String?>?>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<List<String?>?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<String?>?>? success, List<List<String?>?>? error});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Message(
      success: freezed == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<List<String?>?>?,
      error: freezed == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as List<List<String?>?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {final List<List<String?>?>? success, final List<List<String?>?>? error})
      : _success = success,
        _error = error;

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  final List<List<String?>?>? _success;
  @override
  List<List<String?>?>? get success {
    final value = _success;
    if (value == null) return null;
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<String?>?>? _error;
  @override
  List<List<String?>?>? get error {
    final value = _error;
    if (value == null) return null;
    if (_error is EqualUnmodifiableListView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Message(success: $success, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            const DeepCollectionEquality().equals(other._success, _success) &&
            const DeepCollectionEquality().equals(other._error, _error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_success),
      const DeepCollectionEquality().hash(_error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {final List<List<String?>?>? success,
      final List<List<String?>?>? error}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  List<List<String?>?>? get success;
  @override
  List<List<String?>?>? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_pay_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoPayModel _$CryptoPayModelFromJson(Map<String, dynamic> json) {
  return _CryptoPayModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoPayModel {
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoPayModelCopyWith<CryptoPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoPayModelCopyWith<$Res> {
  factory $CryptoPayModelCopyWith(
          CryptoPayModel value, $Res Function(CryptoPayModel) then) =
      _$CryptoPayModelCopyWithImpl<$Res, CryptoPayModel>;
  @useResult
  $Res call({String? result, String? message, int code, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CryptoPayModelCopyWithImpl<$Res, $Val extends CryptoPayModel>
    implements $CryptoPayModelCopyWith<$Res> {
  _$CryptoPayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? code = null,
    Object? data = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
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
abstract class _$$_CryptoPayModelCopyWith<$Res>
    implements $CryptoPayModelCopyWith<$Res> {
  factory _$$_CryptoPayModelCopyWith(
          _$_CryptoPayModel value, $Res Function(_$_CryptoPayModel) then) =
      __$$_CryptoPayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, String? message, int code, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CryptoPayModelCopyWithImpl<$Res>
    extends _$CryptoPayModelCopyWithImpl<$Res, _$_CryptoPayModel>
    implements _$$_CryptoPayModelCopyWith<$Res> {
  __$$_CryptoPayModelCopyWithImpl(
      _$_CryptoPayModel _value, $Res Function(_$_CryptoPayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? code = null,
    Object? data = freezed,
  }) {
    return _then(_$_CryptoPayModel(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoPayModel implements _CryptoPayModel {
  const _$_CryptoPayModel(this.result, this.message, this.code, this.data);

  factory _$_CryptoPayModel.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoPayModelFromJson(json);

  @override
  final String? result;
  @override
  final String? message;
  @override
  final int code;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CryptoPayModel(result: $result, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoPayModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoPayModelCopyWith<_$_CryptoPayModel> get copyWith =>
      __$$_CryptoPayModelCopyWithImpl<_$_CryptoPayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoPayModelToJson(
      this,
    );
  }
}

abstract class _CryptoPayModel implements CryptoPayModel {
  const factory _CryptoPayModel(final String? result, final String? message,
      final int code, final Data? data) = _$_CryptoPayModel;

  factory _CryptoPayModel.fromJson(Map<String, dynamic> json) =
      _$_CryptoPayModel.fromJson;

  @override
  String? get result;
  @override
  String? get message;
  @override
  int get code;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoPayModelCopyWith<_$_CryptoPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get currency => throw _privateConstructorUsedError;
  String? get fiatamount => throw _privateConstructorUsedError;
  String? get crypto => throw _privateConstructorUsedError;
  double? get cryptoamount => throw _privateConstructorUsedError;
  @JsonKey(name: 'txid')
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
  Address? get merchantAddress => throw _privateConstructorUsedError;
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
      {String? currency,
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
      String? disclaimer});

  $AddressCopyWith<$Res>? get merchantAddress;
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
    Object? currency = freezed,
    Object? fiatamount = freezed,
    Object? crypto = freezed,
    Object? cryptoamount = freezed,
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
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatamount: freezed == fiatamount
          ? _value.fiatamount
          : fiatamount // ignore: cast_nullable_to_non_nullable
              as String?,
      crypto: freezed == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoamount: freezed == cryptoamount
          ? _value.cryptoamount
          : cryptoamount // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as Address?,
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
  $AddressCopyWith<$Res>? get merchantAddress {
    if (_value.merchantAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.merchantAddress!, (value) {
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
      {String? currency,
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
      String? disclaimer});

  @override
  $AddressCopyWith<$Res>? get merchantAddress;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? fiatamount = freezed,
    Object? crypto = freezed,
    Object? cryptoamount = freezed,
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
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fiatamount: freezed == fiatamount
          ? _value.fiatamount
          : fiatamount // ignore: cast_nullable_to_non_nullable
              as String?,
      crypto: freezed == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as String?,
      cryptoamount: freezed == cryptoamount
          ? _value.cryptoamount
          : cryptoamount // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as Address?,
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
      {this.currency,
      this.fiatamount,
      this.crypto,
      this.cryptoamount,
      @JsonKey(name: 'txid') this.transactionId,
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
  final String? currency;
  @override
  final String? fiatamount;
  @override
  final String? crypto;
  @override
  final double? cryptoamount;
  @override
  @JsonKey(name: 'txid')
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
  final Address? merchantAddress;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  final String? disclaimer;

  @override
  String toString() {
    return 'Data(currency: $currency, fiatamount: $fiatamount, crypto: $crypto, cryptoamount: $cryptoamount, transactionId: $transactionId, cardMasked: $cardMasked, nameOnCard: $nameOnCard, cardType: $cardType, merchantName: $merchantName, merchantId: $merchantId, merchantLogo: $merchantLogo, merchantAddress: $merchantAddress, date: $date, disclaimer: $disclaimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.fiatamount, fiatamount) ||
                other.fiatamount == fiatamount) &&
            (identical(other.crypto, crypto) || other.crypto == crypto) &&
            (identical(other.cryptoamount, cryptoamount) ||
                other.cryptoamount == cryptoamount) &&
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
      currency,
      fiatamount,
      crypto,
      cryptoamount,
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
      {final String? currency,
      final String? fiatamount,
      final String? crypto,
      final double? cryptoamount,
      @JsonKey(name: 'txid') final String? transactionId,
      @JsonKey(name: 'card_masked') final String? cardMasked,
      @JsonKey(name: 'name_on_card') final String? nameOnCard,
      @JsonKey(name: 'card_type') final String? cardType,
      @JsonKey(name: 'merchant_name') final String? merchantName,
      @JsonKey(name: 'merchant_id') final String? merchantId,
      @JsonKey(name: 'merchant_logo') final String? merchantLogo,
      @JsonKey(name: 'merchant_address') final Address? merchantAddress,
      @JsonKey(name: 'date') final DateTime? date,
      final String? disclaimer}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get currency;
  @override
  String? get fiatamount;
  @override
  String? get crypto;
  @override
  double? get cryptoamount;
  @override
  @JsonKey(name: 'txid')
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
  Address? get merchantAddress;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  String? get disclaimer;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get address => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? address,
      String? state,
      String? zip,
      String? country,
      String? city});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
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
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
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
    return _then(_$_Address(
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
class _$_Address implements _Address {
  const _$_Address(
      {this.address, this.state, this.zip, this.country, this.city});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

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
    return 'Address(address: $address, state: $state, zip: $zip, country: $country, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
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
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? address,
      final String? state,
      final String? zip,
      final String? country,
      final String? city}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

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
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

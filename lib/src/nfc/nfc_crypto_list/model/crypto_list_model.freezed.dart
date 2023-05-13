// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoListModel _$CryptoListModelFromJson(Map<String, dynamic> json) {
  return _CryptoListModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoListModel {
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoListModelCopyWith<CryptoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoListModelCopyWith<$Res> {
  factory $CryptoListModelCopyWith(
          CryptoListModel value, $Res Function(CryptoListModel) then) =
      _$CryptoListModelCopyWithImpl<$Res, CryptoListModel>;
  @useResult
  $Res call({String? result, String? message, int code, List<Data> data});
}

/// @nodoc
class _$CryptoListModelCopyWithImpl<$Res, $Val extends CryptoListModel>
    implements $CryptoListModelCopyWith<$Res> {
  _$CryptoListModelCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoListModelCopyWith<$Res>
    implements $CryptoListModelCopyWith<$Res> {
  factory _$$_CryptoListModelCopyWith(
          _$_CryptoListModel value, $Res Function(_$_CryptoListModel) then) =
      __$$_CryptoListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, String? message, int code, List<Data> data});
}

/// @nodoc
class __$$_CryptoListModelCopyWithImpl<$Res>
    extends _$CryptoListModelCopyWithImpl<$Res, _$_CryptoListModel>
    implements _$$_CryptoListModelCopyWith<$Res> {
  __$$_CryptoListModelCopyWithImpl(
      _$_CryptoListModel _value, $Res Function(_$_CryptoListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$_CryptoListModel(
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
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoListModel implements _CryptoListModel {
  const _$_CryptoListModel(
      this.result, this.message, this.code, final List<Data> data)
      : _data = data;

  factory _$_CryptoListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoListModelFromJson(json);

  @override
  final String? result;
  @override
  final String? message;
  @override
  final int code;
  final List<Data> _data;
  @override
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CryptoListModel(result: $result, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoListModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, code,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoListModelCopyWith<_$_CryptoListModel> get copyWith =>
      __$$_CryptoListModelCopyWithImpl<_$_CryptoListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoListModelToJson(
      this,
    );
  }
}

abstract class _CryptoListModel implements CryptoListModel {
  const factory _CryptoListModel(final String? result, final String? message,
      final int code, final List<Data> data) = _$_CryptoListModel;

  factory _CryptoListModel.fromJson(Map<String, dynamic> json) =
      _$_CryptoListModel.fromJson;

  @override
  String? get result;
  @override
  String? get message;
  @override
  int get code;
  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoListModelCopyWith<_$_CryptoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({int id, String? name, String? code, String? symbol});
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
    Object? id = null,
    Object? name = freezed,
    Object? code = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? code, String? symbol});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? code = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_Data(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(this.id, this.name, this.code, this.symbol);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? symbol;

  @override
  String toString() {
    return 'Data(id: $id, name: $name, code: $code, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, symbol);

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
  const factory _Data(final int id, final String? name, final String? code,
      final String? symbol) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

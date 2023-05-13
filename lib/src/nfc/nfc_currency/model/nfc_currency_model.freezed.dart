// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nfc_currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NfcCurrencyModel _$NfcCurrencyModelFromJson(Map<String, dynamic> json) {
  return _NfcCurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$NfcCurrencyModel {
  String? get result => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NfcCurrencyModelCopyWith<NfcCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcCurrencyModelCopyWith<$Res> {
  factory $NfcCurrencyModelCopyWith(
          NfcCurrencyModel value, $Res Function(NfcCurrencyModel) then) =
      _$NfcCurrencyModelCopyWithImpl<$Res, NfcCurrencyModel>;
  @useResult
  $Res call({String? result, int code, List<Data> data});
}

/// @nodoc
class _$NfcCurrencyModelCopyWithImpl<$Res, $Val extends NfcCurrencyModel>
    implements $NfcCurrencyModelCopyWith<$Res> {
  _$NfcCurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_NfcCurrencyModelCopyWith<$Res>
    implements $NfcCurrencyModelCopyWith<$Res> {
  factory _$$_NfcCurrencyModelCopyWith(
          _$_NfcCurrencyModel value, $Res Function(_$_NfcCurrencyModel) then) =
      __$$_NfcCurrencyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, int code, List<Data> data});
}

/// @nodoc
class __$$_NfcCurrencyModelCopyWithImpl<$Res>
    extends _$NfcCurrencyModelCopyWithImpl<$Res, _$_NfcCurrencyModel>
    implements _$$_NfcCurrencyModelCopyWith<$Res> {
  __$$_NfcCurrencyModelCopyWithImpl(
      _$_NfcCurrencyModel _value, $Res Function(_$_NfcCurrencyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$_NfcCurrencyModel(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
class _$_NfcCurrencyModel implements _NfcCurrencyModel {
  const _$_NfcCurrencyModel(this.result, this.code, final List<Data> data)
      : _data = data;

  factory _$_NfcCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_NfcCurrencyModelFromJson(json);

  @override
  final String? result;
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
    return 'NfcCurrencyModel(result: $result, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NfcCurrencyModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, result, code, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NfcCurrencyModelCopyWith<_$_NfcCurrencyModel> get copyWith =>
      __$$_NfcCurrencyModelCopyWithImpl<_$_NfcCurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NfcCurrencyModelToJson(
      this,
    );
  }
}

abstract class _NfcCurrencyModel implements NfcCurrencyModel {
  const factory _NfcCurrencyModel(
          final String? result, final int code, final List<Data> data) =
      _$_NfcCurrencyModel;

  factory _NfcCurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_NfcCurrencyModel.fromJson;

  @override
  String? get result;
  @override
  int get code;
  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$_NfcCurrencyModelCopyWith<_$_NfcCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String name, String code});
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
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String code});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_$_Data(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(this.name, this.code);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'Data(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

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
  const factory _Data(final String name, final String code) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

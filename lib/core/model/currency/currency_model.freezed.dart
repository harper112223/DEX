// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  int? get code => throw _privateConstructorUsedError;
  List<CurrencyData>? get data => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call({int? code, List<CurrencyData>? data, String? result});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrencyData>?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$_CurrencyModelCopyWith(
          _$_CurrencyModel value, $Res Function(_$_CurrencyModel) then) =
      __$$_CurrencyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, List<CurrencyData>? data, String? result});
}

/// @nodoc
class __$$_CurrencyModelCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$_CurrencyModel>
    implements _$$_CurrencyModelCopyWith<$Res> {
  __$$_CurrencyModelCopyWithImpl(
      _$_CurrencyModel _value, $Res Function(_$_CurrencyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_CurrencyModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrencyData>?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyModel implements _CurrencyModel {
  const _$_CurrencyModel(
      {this.code, final List<CurrencyData>? data, this.result})
      : _data = data;

  factory _$_CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyModelFromJson(json);

  @override
  final int? code;
  final List<CurrencyData>? _data;
  @override
  List<CurrencyData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? result;

  @override
  String toString() {
    return 'CurrencyModel(code: $code, data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      __$$_CurrencyModelCopyWithImpl<_$_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyModelToJson(
      this,
    );
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  const factory _CurrencyModel(
      {final int? code,
      final List<CurrencyData>? data,
      final String? result}) = _$_CurrencyModel;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyModel.fromJson;

  @override
  int? get code;
  @override
  List<CurrencyData>? get data;
  @override
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyModelCopyWith<_$_CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) {
  return _CurrencyData.fromJson(json);
}

/// @nodoc
mixin _$CurrencyData {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDataCopyWith<CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDataCopyWith<$Res> {
  factory $CurrencyDataCopyWith(
          CurrencyData value, $Res Function(CurrencyData) then) =
      _$CurrencyDataCopyWithImpl<$Res, CurrencyData>;
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class _$CurrencyDataCopyWithImpl<$Res, $Val extends CurrencyData>
    implements $CurrencyDataCopyWith<$Res> {
  _$CurrencyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDataCopyWith<$Res>
    implements $CurrencyDataCopyWith<$Res> {
  factory _$$_CurrencyDataCopyWith(
          _$_CurrencyData value, $Res Function(_$_CurrencyData) then) =
      __$$_CurrencyDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class __$$_CurrencyDataCopyWithImpl<$Res>
    extends _$CurrencyDataCopyWithImpl<$Res, _$_CurrencyData>
    implements _$$_CurrencyDataCopyWith<$Res> {
  __$$_CurrencyDataCopyWithImpl(
      _$_CurrencyData _value, $Res Function(_$_CurrencyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_CurrencyData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyData implements _CurrencyData {
  const _$_CurrencyData({this.name, this.code});

  factory _$_CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDataFromJson(json);

  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'CurrencyData(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      __$$_CurrencyDataCopyWithImpl<_$_CurrencyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDataToJson(
      this,
    );
  }
}

abstract class _CurrencyData implements CurrencyData {
  const factory _CurrencyData({final String? name, final String? code}) =
      _$_CurrencyData;

  factory _CurrencyData.fromJson(Map<String, dynamic> json) =
      _$_CurrencyData.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

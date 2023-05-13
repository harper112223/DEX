// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PosVerifyModel _$PosVerifyModelFromJson(Map<String, dynamic> json) {
  return _PosVerifyModel.fromJson(json);
}

/// @nodoc
mixin _$PosVerifyModel {
  String? get status => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosVerifyModelCopyWith<PosVerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosVerifyModelCopyWith<$Res> {
  factory $PosVerifyModelCopyWith(
          PosVerifyModel value, $Res Function(PosVerifyModel) then) =
      _$PosVerifyModelCopyWithImpl<$Res, PosVerifyModel>;
  @useResult
  $Res call({String? status, String? result, String? message});
}

/// @nodoc
class _$PosVerifyModelCopyWithImpl<$Res, $Val extends PosVerifyModel>
    implements $PosVerifyModelCopyWith<$Res> {
  _$PosVerifyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PosVerifyModelCopyWith<$Res>
    implements $PosVerifyModelCopyWith<$Res> {
  factory _$$_PosVerifyModelCopyWith(
          _$_PosVerifyModel value, $Res Function(_$_PosVerifyModel) then) =
      __$$_PosVerifyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? result, String? message});
}

/// @nodoc
class __$$_PosVerifyModelCopyWithImpl<$Res>
    extends _$PosVerifyModelCopyWithImpl<$Res, _$_PosVerifyModel>
    implements _$$_PosVerifyModelCopyWith<$Res> {
  __$$_PosVerifyModelCopyWithImpl(
      _$_PosVerifyModel _value, $Res Function(_$_PosVerifyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_PosVerifyModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PosVerifyModel implements _PosVerifyModel {
  const _$_PosVerifyModel({this.status, this.result, this.message});

  factory _$_PosVerifyModel.fromJson(Map<String, dynamic> json) =>
      _$$_PosVerifyModelFromJson(json);

  @override
  final String? status;
  @override
  final String? result;
  @override
  final String? message;

  @override
  String toString() {
    return 'PosVerifyModel(status: $status, result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosVerifyModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, result, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PosVerifyModelCopyWith<_$_PosVerifyModel> get copyWith =>
      __$$_PosVerifyModelCopyWithImpl<_$_PosVerifyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosVerifyModelToJson(
      this,
    );
  }
}

abstract class _PosVerifyModel implements PosVerifyModel {
  const factory _PosVerifyModel(
      {final String? status,
      final String? result,
      final String? message}) = _$_PosVerifyModel;

  factory _PosVerifyModel.fromJson(Map<String, dynamic> json) =
      _$_PosVerifyModel.fromJson;

  @override
  String? get status;
  @override
  String? get result;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_PosVerifyModelCopyWith<_$_PosVerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

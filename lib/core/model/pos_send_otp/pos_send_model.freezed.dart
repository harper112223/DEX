// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_send_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PosSendModel _$PosSendModelFromJson(Map<String, dynamic> json) {
  return _PosSendModel.fromJson(json);
}

/// @nodoc
mixin _$PosSendModel {
  String? get status => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosSendModelCopyWith<PosSendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosSendModelCopyWith<$Res> {
  factory $PosSendModelCopyWith(
          PosSendModel value, $Res Function(PosSendModel) then) =
      _$PosSendModelCopyWithImpl<$Res, PosSendModel>;
  @useResult
  $Res call({String? status, String? result, String? message});
}

/// @nodoc
class _$PosSendModelCopyWithImpl<$Res, $Val extends PosSendModel>
    implements $PosSendModelCopyWith<$Res> {
  _$PosSendModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PosSendModelCopyWith<$Res>
    implements $PosSendModelCopyWith<$Res> {
  factory _$$_PosSendModelCopyWith(
          _$_PosSendModel value, $Res Function(_$_PosSendModel) then) =
      __$$_PosSendModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? result, String? message});
}

/// @nodoc
class __$$_PosSendModelCopyWithImpl<$Res>
    extends _$PosSendModelCopyWithImpl<$Res, _$_PosSendModel>
    implements _$$_PosSendModelCopyWith<$Res> {
  __$$_PosSendModelCopyWithImpl(
      _$_PosSendModel _value, $Res Function(_$_PosSendModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_PosSendModel(
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
class _$_PosSendModel implements _PosSendModel {
  const _$_PosSendModel({this.status, this.result, this.message});

  factory _$_PosSendModel.fromJson(Map<String, dynamic> json) =>
      _$$_PosSendModelFromJson(json);

  @override
  final String? status;
  @override
  final String? result;
  @override
  final String? message;

  @override
  String toString() {
    return 'PosSendModel(status: $status, result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosSendModel &&
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
  _$$_PosSendModelCopyWith<_$_PosSendModel> get copyWith =>
      __$$_PosSendModelCopyWithImpl<_$_PosSendModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosSendModelToJson(
      this,
    );
  }
}

abstract class _PosSendModel implements PosSendModel {
  const factory _PosSendModel(
      {final String? status,
      final String? result,
      final String? message}) = _$_PosSendModel;

  factory _PosSendModel.fromJson(Map<String, dynamic> json) =
      _$_PosSendModel.fromJson;

  @override
  String? get status;
  @override
  String? get result;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_PosSendModelCopyWith<_$_PosSendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

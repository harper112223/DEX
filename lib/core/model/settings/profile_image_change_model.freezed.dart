// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_change_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileImageChangeModel _$ProfileImageChangeModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileImageChangeModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileImageChangeModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageChangeModelCopyWith<ProfileImageChangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageChangeModelCopyWith<$Res> {
  factory $ProfileImageChangeModelCopyWith(ProfileImageChangeModel value,
          $Res Function(ProfileImageChangeModel) then) =
      _$ProfileImageChangeModelCopyWithImpl<$Res, ProfileImageChangeModel>;
  @useResult
  $Res call({int? code, String? status, Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ProfileImageChangeModelCopyWithImpl<$Res,
        $Val extends ProfileImageChangeModel>
    implements $ProfileImageChangeModelCopyWith<$Res> {
  _$ProfileImageChangeModelCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
abstract class _$$_ProfileImageChangeModelCopyWith<$Res>
    implements $ProfileImageChangeModelCopyWith<$Res> {
  factory _$$_ProfileImageChangeModelCopyWith(_$_ProfileImageChangeModel value,
          $Res Function(_$_ProfileImageChangeModel) then) =
      __$$_ProfileImageChangeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? status, Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ProfileImageChangeModelCopyWithImpl<$Res>
    extends _$ProfileImageChangeModelCopyWithImpl<$Res,
        _$_ProfileImageChangeModel>
    implements _$$_ProfileImageChangeModelCopyWith<$Res> {
  __$$_ProfileImageChangeModelCopyWithImpl(_$_ProfileImageChangeModel _value,
      $Res Function(_$_ProfileImageChangeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ProfileImageChangeModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileImageChangeModel implements _ProfileImageChangeModel {
  const _$_ProfileImageChangeModel({this.code, this.status, this.message});

  factory _$_ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileImageChangeModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final Message? message;

  @override
  String toString() {
    return 'ProfileImageChangeModel(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileImageChangeModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileImageChangeModelCopyWith<_$_ProfileImageChangeModel>
      get copyWith =>
          __$$_ProfileImageChangeModelCopyWithImpl<_$_ProfileImageChangeModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileImageChangeModelToJson(
      this,
    );
  }
}

abstract class _ProfileImageChangeModel implements ProfileImageChangeModel {
  const factory _ProfileImageChangeModel(
      {final int? code,
      final String? status,
      final Message? message}) = _$_ProfileImageChangeModel;

  factory _ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileImageChangeModel.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileImageChangeModelCopyWith<_$_ProfileImageChangeModel>
      get copyWith => throw _privateConstructorUsedError;
}

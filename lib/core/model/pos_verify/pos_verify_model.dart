import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_verify_model.freezed.dart';
part 'pos_verify_model.g.dart';

@freezed
class PosVerifyModel with _$PosVerifyModel {
  const factory PosVerifyModel({
    String? status,
    String? result,
    String? message,
  }) = _PosVerifyModel;

  factory PosVerifyModel.fromJson(Map<String, dynamic> json) =>
      _$PosVerifyModelFromJson(json);
}

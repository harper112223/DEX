import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_send_model.freezed.dart';
part 'pos_send_model.g.dart';

@freezed
class PosSendModel with _$PosSendModel {
  const factory PosSendModel({
    String? status,
    String? result,
    String? message,
  }) = _PosSendModel;

  factory PosSendModel.fromJson(Map<String, dynamic> json) =>
      _$PosSendModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';

part 'profile_image_change_model.freezed.dart';
part 'profile_image_change_model.g.dart';

@freezed
class ProfileImageChangeModel with _$ProfileImageChangeModel {
  const factory ProfileImageChangeModel({
    int? code,
    String? status,
    Message? message,
  }) = _ProfileImageChangeModel;

  factory ProfileImageChangeModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageChangeModelFromJson(json);
}

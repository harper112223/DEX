// To parse this JSON data, do
//
//     final CardScanResponse = CardScanResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_scan_response_model.freezed.dart';
part 'card_scan_response_model.g.dart';

@freezed
class CardScanResponse with _$CardScanResponse {
  const factory CardScanResponse({
    @JsonKey(name: 'card_hash') String? cardHash,
    String? cvv,
    String? expiration,
    @JsonKey(name: 'name_on_card') String? nameOnCard,
  }) = _CardScanResponse;

  factory CardScanResponse.fromJson(Map<String, dynamic> json) =>
      _$CardScanResponseFromJson(json);
}

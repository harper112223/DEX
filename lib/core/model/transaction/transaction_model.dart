// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @JsonKey(name: 'wallet_balance') WalletBalance? walletBalance,
    List<Transaction?>? transactions,
    Status? status,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    String? result,
    String? message,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'transaction_id') String? transactionId,
    String? currency,
    String? amount,
    @JsonKey(name: 'transaction_status') String? transactionStatus,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    String? description,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

@freezed
class WalletBalance with _$WalletBalance {
  const factory WalletBalance({
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'ewallet_id') String? ewalletId,
    String? currency,
    String? alias,
    double? balance,
    @JsonKey(name: 'received_balance') String? receivedBalance,
    @JsonKey(name: 'on_hold_balance') String? onHoldBalance,
    @JsonKey(name: 'reserve_balance') String? reserveBalance,
    @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt,
  }) = _WalletBalance;

  factory WalletBalance.fromJson(Map<String, dynamic> json) =>
      _$WalletBalanceFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardModel _$$_DashboardModelFromJson(Map<String, dynamic> json) =>
    _$_DashboardModel(
      walletBalance: json['wallet_balance'] == null
          ? null
          : WalletBalance.fromJson(
              json['wallet_balance'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardModelToJson(_$_DashboardModel instance) =>
    <String, dynamic>{
      'wallet_balance': instance.walletBalance,
      'transactions': instance.transactions,
      'status': instance.status,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      result: json['result'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
    };

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      userId: json['user_id'] as int?,
      transactionId: json['transaction_id'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as String?,
      transactionStatus: json['transaction_status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'transaction_id': instance.transactionId,
      'currency': instance.currency,
      'amount': instance.amount,
      'transaction_status': instance.transactionStatus,
      'payment_status': instance.paymentStatus,
      'created_at': instance.createdAt?.toIso8601String(),
      'description': instance.description,
    };

_$_WalletBalance _$$_WalletBalanceFromJson(Map<String, dynamic> json) =>
    _$_WalletBalance(
      userId: json['user_id'] as int?,
      ewalletId: json['ewallet_id'] as String?,
      currency: json['currency'] as String?,
      alias: json['alias'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      receivedBalance: json['received_balance'] as String?,
      onHoldBalance: json['on_hold_balance'] as String?,
      reserveBalance: json['reserve_balance'] as String?,
      lastUpdatedAt: json['last_updated_at'] == null
          ? null
          : DateTime.parse(json['last_updated_at'] as String),
    );

Map<String, dynamic> _$$_WalletBalanceToJson(_$_WalletBalance instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'ewallet_id': instance.ewalletId,
      'currency': instance.currency,
      'alias': instance.alias,
      'balance': instance.balance,
      'received_balance': instance.receivedBalance,
      'on_hold_balance': instance.onHoldBalance,
      'reserve_balance': instance.reserveBalance,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
    };

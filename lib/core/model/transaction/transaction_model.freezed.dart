// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: 'wallet_balance')
  WalletBalance? get walletBalance => throw _privateConstructorUsedError;
  List<Transaction?>? get transactions => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'wallet_balance') WalletBalance? walletBalance,
      List<Transaction?>? transactions,
      Status? status});

  $WalletBalanceCopyWith<$Res>? get walletBalance;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? transactions = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as WalletBalance?,
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletBalanceCopyWith<$Res>? get walletBalance {
    if (_value.walletBalance == null) {
      return null;
    }

    return $WalletBalanceCopyWith<$Res>(_value.walletBalance!, (value) {
      return _then(_value.copyWith(walletBalance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'wallet_balance') WalletBalance? walletBalance,
      List<Transaction?>? transactions,
      Status? status});

  @override
  $WalletBalanceCopyWith<$Res>? get walletBalance;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? transactions = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TransactionModel(
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as WalletBalance?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {@JsonKey(name: 'wallet_balance') this.walletBalance,
      final List<Transaction?>? transactions,
      this.status})
      : _transactions = transactions;

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  @JsonKey(name: 'wallet_balance')
  final WalletBalance? walletBalance;
  final List<Transaction?>? _transactions;
  @override
  List<Transaction?>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Status? status;

  @override
  String toString() {
    return 'TransactionModel(walletBalance: $walletBalance, transactions: $transactions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletBalance,
      const DeepCollectionEquality().hash(_transactions), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {@JsonKey(name: 'wallet_balance') final WalletBalance? walletBalance,
      final List<Transaction?>? transactions,
      final Status? status}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  @JsonKey(name: 'wallet_balance')
  WalletBalance? get walletBalance;
  @override
  List<Transaction?>? get transactions;
  @override
  Status? get status;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String? result, String? message});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? result, String? message});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Status(
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
class _$_Status implements _Status {
  const _$_Status({this.result, this.message});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String? result;
  @override
  final String? message;

  @override
  String toString() {
    return 'Status(result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status({final String? result, final String? message}) =
      _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String? get result;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String? get transactionId => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_status')
  String? get transactionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'transaction_id') String? transactionId,
      String? currency,
      String? amount,
      @JsonKey(name: 'transaction_status') String? transactionStatus,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? description});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? transactionId = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? transactionStatus = freezed,
    Object? paymentStatus = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'transaction_id') String? transactionId,
      String? currency,
      String? amount,
      @JsonKey(name: 'transaction_status') String? transactionStatus,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? description});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? transactionId = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? transactionStatus = freezed,
    Object? paymentStatus = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Transaction(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'transaction_id') this.transactionId,
      this.currency,
      this.amount,
      @JsonKey(name: 'transaction_status') this.transactionStatus,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'created_at') this.createdAt,
      this.description});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  final String? currency;
  @override
  final String? amount;
  @override
  @JsonKey(name: 'transaction_status')
  final String? transactionStatus;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'Transaction(userId: $userId, transactionId: $transactionId, currency: $currency, amount: $amount, transactionStatus: $transactionStatus, paymentStatus: $paymentStatus, createdAt: $createdAt, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionStatus, transactionStatus) ||
                other.transactionStatus == transactionStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, transactionId, currency,
      amount, transactionStatus, paymentStatus, createdAt, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {@JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'transaction_id') final String? transactionId,
      final String? currency,
      final String? amount,
      @JsonKey(name: 'transaction_status') final String? transactionStatus,
      @JsonKey(name: 'payment_status') final String? paymentStatus,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final String? description}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @override
  String? get currency;
  @override
  String? get amount;
  @override
  @JsonKey(name: 'transaction_status')
  String? get transactionStatus;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBalance _$WalletBalanceFromJson(Map<String, dynamic> json) {
  return _WalletBalance.fromJson(json);
}

/// @nodoc
mixin _$WalletBalance {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_balance')
  String? get receivedBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_hold_balance')
  String? get onHoldBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'reserve_balance')
  String? get reserveBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletBalanceCopyWith<WalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceCopyWith<$Res> {
  factory $WalletBalanceCopyWith(
          WalletBalance value, $Res Function(WalletBalance) then) =
      _$WalletBalanceCopyWithImpl<$Res, WalletBalance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      String? currency,
      String? alias,
      double? balance,
      @JsonKey(name: 'received_balance') String? receivedBalance,
      @JsonKey(name: 'on_hold_balance') String? onHoldBalance,
      @JsonKey(name: 'reserve_balance') String? reserveBalance,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt});
}

/// @nodoc
class _$WalletBalanceCopyWithImpl<$Res, $Val extends WalletBalance>
    implements $WalletBalanceCopyWith<$Res> {
  _$WalletBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? ewalletId = freezed,
    Object? currency = freezed,
    Object? alias = freezed,
    Object? balance = freezed,
    Object? receivedBalance = freezed,
    Object? onHoldBalance = freezed,
    Object? reserveBalance = freezed,
    Object? lastUpdatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      ewalletId: freezed == ewalletId
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      receivedBalance: freezed == receivedBalance
          ? _value.receivedBalance
          : receivedBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      onHoldBalance: freezed == onHoldBalance
          ? _value.onHoldBalance
          : onHoldBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserveBalance: freezed == reserveBalance
          ? _value.reserveBalance
          : reserveBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletBalanceCopyWith<$Res>
    implements $WalletBalanceCopyWith<$Res> {
  factory _$$_WalletBalanceCopyWith(
          _$_WalletBalance value, $Res Function(_$_WalletBalance) then) =
      __$$_WalletBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      String? currency,
      String? alias,
      double? balance,
      @JsonKey(name: 'received_balance') String? receivedBalance,
      @JsonKey(name: 'on_hold_balance') String? onHoldBalance,
      @JsonKey(name: 'reserve_balance') String? reserveBalance,
      @JsonKey(name: 'last_updated_at') DateTime? lastUpdatedAt});
}

/// @nodoc
class __$$_WalletBalanceCopyWithImpl<$Res>
    extends _$WalletBalanceCopyWithImpl<$Res, _$_WalletBalance>
    implements _$$_WalletBalanceCopyWith<$Res> {
  __$$_WalletBalanceCopyWithImpl(
      _$_WalletBalance _value, $Res Function(_$_WalletBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? ewalletId = freezed,
    Object? currency = freezed,
    Object? alias = freezed,
    Object? balance = freezed,
    Object? receivedBalance = freezed,
    Object? onHoldBalance = freezed,
    Object? reserveBalance = freezed,
    Object? lastUpdatedAt = freezed,
  }) {
    return _then(_$_WalletBalance(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      ewalletId: freezed == ewalletId
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      receivedBalance: freezed == receivedBalance
          ? _value.receivedBalance
          : receivedBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      onHoldBalance: freezed == onHoldBalance
          ? _value.onHoldBalance
          : onHoldBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserveBalance: freezed == reserveBalance
          ? _value.reserveBalance
          : reserveBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletBalance implements _WalletBalance {
  const _$_WalletBalance(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'ewallet_id') this.ewalletId,
      this.currency,
      this.alias,
      this.balance,
      @JsonKey(name: 'received_balance') this.receivedBalance,
      @JsonKey(name: 'on_hold_balance') this.onHoldBalance,
      @JsonKey(name: 'reserve_balance') this.reserveBalance,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt});

  factory _$_WalletBalance.fromJson(Map<String, dynamic> json) =>
      _$$_WalletBalanceFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'ewallet_id')
  final String? ewalletId;
  @override
  final String? currency;
  @override
  final String? alias;
  @override
  final double? balance;
  @override
  @JsonKey(name: 'received_balance')
  final String? receivedBalance;
  @override
  @JsonKey(name: 'on_hold_balance')
  final String? onHoldBalance;
  @override
  @JsonKey(name: 'reserve_balance')
  final String? reserveBalance;
  @override
  @JsonKey(name: 'last_updated_at')
  final DateTime? lastUpdatedAt;

  @override
  String toString() {
    return 'WalletBalance(userId: $userId, ewalletId: $ewalletId, currency: $currency, alias: $alias, balance: $balance, receivedBalance: $receivedBalance, onHoldBalance: $onHoldBalance, reserveBalance: $reserveBalance, lastUpdatedAt: $lastUpdatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletBalance &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ewalletId, ewalletId) ||
                other.ewalletId == ewalletId) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.receivedBalance, receivedBalance) ||
                other.receivedBalance == receivedBalance) &&
            (identical(other.onHoldBalance, onHoldBalance) ||
                other.onHoldBalance == onHoldBalance) &&
            (identical(other.reserveBalance, reserveBalance) ||
                other.reserveBalance == reserveBalance) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      ewalletId,
      currency,
      alias,
      balance,
      receivedBalance,
      onHoldBalance,
      reserveBalance,
      lastUpdatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletBalanceCopyWith<_$_WalletBalance> get copyWith =>
      __$$_WalletBalanceCopyWithImpl<_$_WalletBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletBalanceToJson(
      this,
    );
  }
}

abstract class _WalletBalance implements WalletBalance {
  const factory _WalletBalance(
          {@JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'ewallet_id') final String? ewalletId,
          final String? currency,
          final String? alias,
          final double? balance,
          @JsonKey(name: 'received_balance') final String? receivedBalance,
          @JsonKey(name: 'on_hold_balance') final String? onHoldBalance,
          @JsonKey(name: 'reserve_balance') final String? reserveBalance,
          @JsonKey(name: 'last_updated_at') final DateTime? lastUpdatedAt}) =
      _$_WalletBalance;

  factory _WalletBalance.fromJson(Map<String, dynamic> json) =
      _$_WalletBalance.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId;
  @override
  String? get currency;
  @override
  String? get alias;
  @override
  double? get balance;
  @override
  @JsonKey(name: 'received_balance')
  String? get receivedBalance;
  @override
  @JsonKey(name: 'on_hold_balance')
  String? get onHoldBalance;
  @override
  @JsonKey(name: 'reserve_balance')
  String? get reserveBalance;
  @override
  @JsonKey(name: 'last_updated_at')
  DateTime? get lastUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_WalletBalanceCopyWith<_$_WalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

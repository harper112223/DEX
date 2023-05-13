part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {}

class TransactionInitialState extends TransactionState {
  @override
  List<Object?> get props => ['TransactionInitialState'];
}

class TransactionLoadingState extends TransactionState {
  final String message;

  TransactionLoadingState(this.message);
  @override
  List<Object?> get props => [message];
}

class TransactionLoadedState extends TransactionState {
  final String message;
  final TransactionModel model;

  TransactionLoadedState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class SearchResultLoaded extends TransactionState {
  final List<Transaction?>? models;
  SearchResultLoaded(this.models);
  @override
  List<Object?> get props => [models];
}

class TransactionErrorState extends TransactionState {
  final String errorMessage;
  TransactionErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

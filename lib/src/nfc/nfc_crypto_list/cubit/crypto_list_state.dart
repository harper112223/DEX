part of 'crypto_list_cubit.dart';



abstract class CryptoListState extends Equatable {}

class CryptoListInitialState extends CryptoListState {
  @override
  List<Object?> get props => ['CryptoListInitialState'];
}

class CryptoListLoadingState extends CryptoListState {
  final String loadingMessage;
  final DateTime dateTime;
  CryptoListLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class CryptoListSuccesstate extends CryptoListState {
  final CryptoListModel model;
  final DateTime dateTime;
  CryptoListSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class CryptoListErrorState extends CryptoListState {
  final String errorMessage;
  final DateTime dateTime;
  CryptoListErrorState({required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

class SearchResultLoaded extends CryptoListState {
  final List<Data>? allCrypto;
  final List<Data>? searchResult;

  SearchResultLoaded({required this.allCrypto,required this.searchResult});
  @override
  List<Object?> get props => [allCrypto];
}

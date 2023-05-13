part of 'nfc_currency_cubit.dart';



abstract class NfcCurrencyState extends Equatable {}

class NfcCurrencyInitialState extends NfcCurrencyState {
  @override
  List<Object?> get props => ['NfcCurrencyInitialState'];
}

class NfcCurrencyLoadingState extends NfcCurrencyState {
  final String loadingMessage;
  final DateTime dateTime;
  NfcCurrencyLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class NfcCurrencySuccesstate extends NfcCurrencyState {
  final NfcCurrencyModel model;
  final DateTime dateTime;
  NfcCurrencySuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class NfcCurrencyErrorState extends NfcCurrencyState {
  final String errorMessage;
  final DateTime dateTime;
  NfcCurrencyErrorState({required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

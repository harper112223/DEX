part of 'card_pin_cubit.dart';

abstract class CardPinState extends Equatable {}

class CardPinInitialState extends CardPinState {
  @override
  List<Object?> get props => ['CardPinInitialState'];
}

class CardPinLoadingState extends CardPinState {
  final String loadingMessage;
  final DateTime dateTime;
  CardPinLoadingState({
    required this.loadingMessage,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [loadingMessage, dateTime];
}

class CardPinSuccesstate extends CardPinState {
  final CryptoPayModel model;
  final DateTime dateTime;
  CardPinSuccesstate({
    required this.model,
    required this.dateTime,
  });
  @override
  List<Object?> get props => [model, dateTime];
}

class CardPinErrorState extends CardPinState {
  final String errorMessage;
  final DateTime dateTime;
  CardPinErrorState({required this.errorMessage, required this.dateTime});
  @override
  List<Object?> get props => [errorMessage, dateTime];
}

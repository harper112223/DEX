import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/src/nfc/card_pin/model/crypto_pay_model.dart';
import 'package:merchant_app/src/nfc/nfc_repo.dart';
part 'card_pin_state.dart';

class CardPinCubit extends Cubit<CardPinState> {
  final NFCRepository repository;
  CardPinCubit({required this.repository}) : super(CardPinInitialState());

  Future<void> pay({required String cardhash,required String pin,required String code,required String currency, required String amount}) async {
    try {
      emit( CardPinLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.pay(amount: amount, currency: currency, code: code, pin: pin, cardhash: cardhash);
      emit( CardPinSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on CustomError catch (e) {
      emit( CardPinErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit( CardPinErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}

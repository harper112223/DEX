import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/src/nfc/nfc_currency/model/nfc_currency_model.dart';
import 'package:merchant_app/src/nfc/nfc_repo.dart';


part 'nfc_currency_state.dart';

class NfcCurrencyCubit extends Cubit<NfcCurrencyState> {
  final NFCRepository repository;
  NfcCurrencyCubit({required this.repository}) : super(NfcCurrencyInitialState());

  Future<void> getCurrency() async {
    try {
      emit(NfcCurrencyLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.getCurrency();
      emit(NfcCurrencySuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on CustomError catch (e) {
      emit(NfcCurrencyErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(NfcCurrencyErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/model/crypto_list_model.dart';

import 'package:merchant_app/src/nfc/nfc_repo.dart';

part 'crypto_list_state.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  final NFCRepository repository;
  CryptoListCubit({required this.repository}) : super(CryptoListInitialState());

  Future<void> getCryptoList() async {
    try {
      emit(CryptoListLoadingState(
        loadingMessage: "Loading card...",
        dateTime: DateTime.now(),
      ));
      final _model = await repository.getCryptoList();
      emit(CryptoListSuccesstate(
        model: _model,
        dateTime: DateTime.now(),
      ));
    } on CustomError catch (e) {
      emit(CryptoListErrorState(
        errorMessage: e.message ?? '',
        dateTime: DateTime.now(),
      ));
    } catch (error) {
      emit(CryptoListErrorState(
        errorMessage: "$error",
        dateTime: DateTime.now(),
      ));
    }
  }

  Future<void> searchCrypto(
      List<Data>? allCryptos, String searchText) async {
    List<Data>? _models = [];
    try {
      emit(CryptoListLoadingState(
        loadingMessage: "Searching Crypto...",
        dateTime: DateTime.now(),
      ));
      await Future.delayed(const Duration(milliseconds: 100));
      if (searchText != '') {
        if (allCryptos != null) {
          _models=allCryptos.where((e) => e.code.toString().toLowerCase().contains(searchText.toLowerCase())).toList();
        }
      }
      emit(SearchResultLoaded(allCrypto: allCryptos,searchResult: _models));
    } catch (e) {
      emit(CryptoListErrorState(
        errorMessage: "$e",
        dateTime: DateTime.now(),
      ));
    }
  }
}

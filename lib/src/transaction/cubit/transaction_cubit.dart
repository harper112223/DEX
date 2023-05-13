import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/transaction/transaction_model.dart';
import 'package:merchant_app/core/repository/transactions_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';

import 'package:unique_list/unique_list.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  final TransactionsRepository repository;
  TransactionCubit({required this.repository})
      : super(TransactionInitialState());

  void transaction() async {
    try {
      emit(TransactionLoadingState("Fetching transaction"));
      final email = await MySharedPreferences().getStringValue(Constants.email);
      if (email != '') {
        final model = await repository.walletTransactions(email: email);
        emit(TransactionLoadedState(
          message: model.status?.message ?? 'Transaction fetch',
          model: model,
        ));
      }
    } on CustomError catch (e) {
      emit(TransactionErrorState(e.message ?? "Something went wrong"));
    } catch (e) {
      emit(TransactionErrorState("Error: $e"));
    }
  }

  Future<void> searchTransaction(
    List<Transaction?>? allTrasanction,
    String searchText,
  ) async {
    ///Store only [Unique items]
    final models = UniqueList<Transaction>();
    try {
      emit(TransactionLoadingState('loading...'));
      await Future.delayed(const Duration(milliseconds: 100));
      if (searchText != '') {
        if (allTrasanction != null) {
          for (var e in allTrasanction) {
            if (e?.amount != null) {
              if (e?.amount == ('+$searchText') ||
                  e?.amount == ('-$searchText')) {
                if (e != null) {
                  models.add(e);
                }
              }
            }

            if (e != null) {
              if (e.description != null) {
                if (e.description!
                        .toLowerCase()
                        .contains(searchText.toLowerCase()) ||
                    e.amount == searchText) {
                  models.add(e);
                }
              }
            }
          }
        }
      }
      emit(SearchResultLoaded(models));
    } catch (e, s) {
      emit(TransactionErrorState("$e , $s"));
    }
  }
}

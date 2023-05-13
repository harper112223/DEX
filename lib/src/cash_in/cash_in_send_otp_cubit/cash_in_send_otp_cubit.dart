import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';

part 'cash_in_send_otp_state.dart';

class CashInSendOTPCubit extends Cubit<CashInSendOTPState> {
  final AgentRepository repository;
  CashInSendOTPCubit({required this.repository})
      : super(CashInSendOTPInitialState());

  Future<void> posSendOTPCash({required String cardHash}) async {
    try {
      emit(CashInSendOTPLoadingState("Sending OTP"));
      final model = await repository.posSendOTPCash(cardHash: cardHash);
      if (model.result != 'failure') {
        emit(
          CashInSendOTPSucsssState(
              message: "OTP sended successfully", model: model),
        );
      } else {
        emit(
          CashInSendOTPErrorState(
              errorMessage: model.message ?? Constants.somethingWentWrong),
        );
      }
    } on CustomError catch (e) {
      emit(
        CashInSendOTPErrorState(
            errorMessage: e.message ?? Constants.somethingWentWrong),
      );
    } catch (e) {
      emit(CashInSendOTPErrorState(errorMessage: ("Error: $e")));
    }
  }
}

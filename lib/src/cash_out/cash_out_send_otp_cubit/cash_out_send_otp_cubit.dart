import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';

part 'cash_out_send_otp_state.dart';

class CashOutSendOTPCubit extends Cubit<CashOutSendOTPState> {
  final AgentRepository repository;
  CashOutSendOTPCubit({required this.repository})
      : super(CashOutSendOTPInitialState());

  Future<void> posSendOTPCash({required String cardHash}) async {
    try {
      emit(CashOutSendOTPLoadingState("Sending OTP"));
      final model = await repository.posSendOTPCash(cardHash: cardHash);
      if (model.result != 'failure') {
        emit(
          CashOutSendOTPSucsssState(
              message: "OTP send successfully", model: model),
        );
      } else {
        emit(
          CashOutSendOTPErrorState(
              errorMessage: model.message ?? Constants.somethingWentWrong),
        );
      }
    } on CustomError catch (e) {
      emit(
        CashOutSendOTPErrorState(
            errorMessage: e.message ?? Constants.somethingWentWrong),
      );
    } catch (e) {
      emit(CashOutSendOTPErrorState(errorMessage: ("Error: $e")));
    }
  }
}

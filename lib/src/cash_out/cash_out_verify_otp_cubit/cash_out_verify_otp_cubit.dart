import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/model/pos_verify/pos_verify_model.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';

part 'cash_out_verify_otp_state.dart';

class CashOutVerifyOTPCubit extends Cubit<CashOutVerifyOTPState> {
  final AgentRepository repository;
  CashOutVerifyOTPCubit({required this.repository})
      : super(CashOutVerifyOTPInitialState());

  Future<void> cashOutVerifyOTP({
    required String cardHash,
    required String code,
    required String month,
    required String year,
    required String amount,
    required String cvv,
  }) async {
    emit(CashOutVerifyOTPLoadingState(loadingMessage: "Verifying OTP"));
    try {
      final posVerifyModel = await repository.posVerifyOTPCash(
        cardHash: cardHash,
        code: code,
      );
      if (posVerifyModel.result != 'failure' &&
          posVerifyModel.status != 'error') {
        emit(CashOutVerifyOTPSucssState(
          message: "OTP verify successfully",
          model: posVerifyModel,
        ));

        final model = await repository.posCashout(
          cardHash: cardHash,
          month: month,
          year: year,
          amount: amount,
          cvv: cvv,
        );
        if (model.code! >= 200 && model.code! <= 300) {
          emit(CashOutEmitSucssState(
            message:
                model.message?.success?[0]?.last ?? 'Transaction Processed',
            model: model,
          ));
        } else {
          emit(CashOutPaymentFieldState(
            errorMessage:
                model.message?.error?[0]?.last ?? Constants.somethingWentWrong,
          ));
        }
      } else {
        emit(CashOutVerifyOTPErrorState(
          errorMessage: posVerifyModel.message ?? Constants.somethingWentWrong,
        ));
      }
    } on CustomError catch (e) {
      emit(CashOutVerifyOTPErrorState(
        errorMessage: e.message ?? Constants.somethingWentWrong,
      ));
    } catch (e) {
      emit(CashOutVerifyOTPErrorState(
        errorMessage: "Error:$e ",
      ));
    }
  }

  Future<void> cashOutResendOTP({required String cardHash}) async {
    emit(CashOutVerifyOTPLoadingState(loadingMessage: "Resending OTP"));
    try {
      final model = await repository.posSendOTPCash(cardHash: cardHash);
      emit(CashOutResendOTPSucsssState(
          message: model.status ?? "OTP resend successfully", model: model));
    } on CustomError catch (e) {
      emit(CashOutVerifyOTPErrorState(
        errorMessage: e.message ?? Constants.somethingWentWrong,
      ));
    } catch (e) {
      emit(CashOutVerifyOTPErrorState(errorMessage: "Error:$e "));
    }
  }
}

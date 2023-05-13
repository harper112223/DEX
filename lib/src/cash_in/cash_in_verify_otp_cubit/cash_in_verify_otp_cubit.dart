import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/model/pos_verify/pos_verify_model.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';

part 'cash_in_verify_otp_state.dart';

class CashInVerifyOTPCubit extends Cubit<CashInVerifyOTPState> {
  final AgentRepository repository;
  CashInVerifyOTPCubit({required this.repository})
      : super(CashInVerifyOTPInitialState());

  Future<void> cashInVerifyOTP({
    required String cardHash,
    required String code,
    required String month,
    required String year,
    required String amount,
    required String cvv,
  }) async {
    emit(VerifyCashInVerifyOTPLoadingState(loadingMessage: "Verifying OTP"));
    try {
      final posVerifyModel = await repository.posVerifyOTPCash(
        cardHash: cardHash,
        code: code,
      );
      if (posVerifyModel.result != 'failure' &&
          posVerifyModel.status != 'error') {
        emit(CashInVerifyOTPSucssState(
          message: "OTP verify successfully",
          model: posVerifyModel,
        ));

        final posSellModel = await repository.posCashin(
          cardHash: cardHash,
          month: month,
          year: year,
          amount: amount,
          cvv: cvv,
        );

        if (posSellModel.code! >= 200 && posSellModel.code! <= 300) {
          emit(CashInEmitSucssState(
            message: posSellModel.message?.success?[0]?.last ??
                'Transaction Processed',
            model: posSellModel,
          ));
        } else {
          emit(CashOutPaymentFieldState(
            errorMessage: posSellModel.message?.error?[0]?.last ??
                Constants.somethingWentWrong,
          ));
        }
      } else {
        emit(CashInVerifyOTPErrorState(
          errorMessage: posVerifyModel.message ?? 'Something went wrong',
        ));
      }
    } on CustomError catch (e) {
      emit(CashInVerifyOTPErrorState(
          errorMessage: e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(CashInVerifyOTPErrorState(
        errorMessage: "Error:$e ",
      ));
    }
  }

  Future<void> cashInResendOTP({required String cardHash}) async {
    emit(
      VerifyCashInVerifyOTPLoadingState(loadingMessage: "Resending OTP"),
    );
    try {
      final model = await repository.posSendOTPCash(cardHash: cardHash);
      emit(CashInResendOTPSucsssState(
        message: model.status ?? "OTP resend successfully",
        model: model,
      ));
    } on CustomError catch (e) {
      emit(CashInVerifyOTPErrorState(
          errorMessage: e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(CashInVerifyOTPErrorState(errorMessage: "Error:$e "));
    }
  }
}

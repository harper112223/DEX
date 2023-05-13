import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/model/pos_verify/pos_verify_model.dart';
import 'package:merchant_app/core/repository/scan_me_repo.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final ScanMeRepository repository;
  OtpCubit({required this.repository}) : super(OtpInitialState());

  Future<void> verifyOTP({
    required String cardHash,
    required String code,
    required String month,
    required String year,
    required String currency,
    required String amount,
    required String cvv,
  }) async {
    emit(VerifyOtpLoadingState(loadingMessage: "Verifying OTP"));
    try {
      final posVerifyModel = await repository.posVerifyOTP(
        cardHash: cardHash,
        code: code,
      );
      print(posVerifyModel);
      if (posVerifyModel.result != 'failure' &&
          posVerifyModel.status != 'error') {
        emit(VerifyOTPSucssState(
            message: "OTP verify successfully", model: posVerifyModel));

        final posSellModel = await repository.posSale(
          cardHash: cardHash,
          month: month,
          year: year,
          currency: currency,
          amount: amount,
          cvv: cvv,
        );
        print(posSellModel);
        if (posSellModel.code! >= 200 && posSellModel.code! <= 300) {
          emit(POSSellSucssState(
            message: posSellModel.message?.success?[0]?.last ??
                'Transaction Processed',
            model: posSellModel,
          ));
        } else {
          emit(ScanMePaymentFieldState(
            errorMessage: posSellModel.message?.error?[0]?.last ??
                Constants.somethingWentWrong,
          ));
        }
      } else {
        emit(VerifyOtpErrorState(
          errorMessage: posVerifyModel.message ?? 'Something went wrong',
        ));
      }
    } on CustomError catch (e) {
      emit(VerifyOtpErrorState(
          errorMessage: e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(VerifyOtpErrorState(
        errorMessage: "Error:$e ",
      ));
    }
  }

  Future<void> resendOTP({required String cardHash}) async {
    emit(
      VerifyOtpLoadingState(loadingMessage: "Resending OTP"),
    );
    try {
      final model = await repository.posSendOTP(cardHash: cardHash);
      emit(ResendOtpSendSucssState(
          message: model.status ?? "OTP resend successfully", model: model));
    } on CustomError catch (e) {
      emit(VerifyOtpErrorState(
          errorMessage: e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(VerifyOtpErrorState(errorMessage: "Error:$e "));
    }
  }
}

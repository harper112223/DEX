import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/pos_send_otp/pos_send_model.dart';
import 'package:merchant_app/core/repository/scan_me_repo.dart';

part 'scan_me_state.dart';

class ScanMeCubit extends Cubit<ScanMeState> {
  final ScanMeRepository repository;
  ScanMeCubit({required this.repository}) : super(ScanMeInitialState());

  Future<void> sendOTP({required String cardHash}) async {
    try {
      emit(ScanMeLoadingState("Sending OTP"));
      final model = await repository.posSendOTP(cardHash: cardHash);
      print(model);
      if (model.status != 'error') {
        emit(
          SendOTPSucsssState(
            message: "OTP sended successfully",
            model: model,
          ),
        );
      } else {
        emit(
          SendOTPErrorState(
            errorMessage: model.message ?? 'Something went wrong',
          ),
        );
      }
    } on CustomError catch (e) {
      emit(
        SendOTPErrorState(
          errorMessage: e.message ?? 'Something went wrong',
        ),
      );
    } catch (e) {
      emit(SendOTPErrorState(errorMessage: ("Error: $e")));
    }
  }
}

part of 'cash_out_send_otp_cubit.dart';

abstract class CashOutSendOTPState extends Equatable {}

class CashOutSendOTPInitialState extends CashOutSendOTPState {
  @override
  List<Object?> get props => ['CashOutSendOTPInitialState'];
}

class CashOutSendOTPLoadingState extends CashOutSendOTPState {
  final String loadingMessage;
  CashOutSendOTPLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class CashOutSendOTPSucsssState extends CashOutSendOTPState {
  final String message;
  final PosSendModel model;
  CashOutSendOTPSucsssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class CashOutSendOTPErrorState extends CashOutSendOTPState {
  final String errorMessage;
  CashOutSendOTPErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

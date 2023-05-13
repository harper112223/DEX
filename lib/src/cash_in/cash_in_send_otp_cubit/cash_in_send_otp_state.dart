part of 'cash_in_send_otp_cubit.dart';

abstract class CashInSendOTPState extends Equatable {}

class CashInSendOTPInitialState extends CashInSendOTPState {
  @override
  List<Object?> get props => ['CashInSendOTPInitialState'];
}

class CashInSendOTPLoadingState extends CashInSendOTPState {
  final String loadingMessage;
  CashInSendOTPLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class CashInSendOTPSucsssState extends CashInSendOTPState {
  final String message;
  final PosSendModel model;
  CashInSendOTPSucsssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class CashInSendOTPErrorState extends CashInSendOTPState {
  final String errorMessage;
  CashInSendOTPErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

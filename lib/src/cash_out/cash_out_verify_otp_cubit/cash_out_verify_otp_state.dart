part of 'cash_out_verify_otp_cubit.dart';

abstract class CashOutVerifyOTPState extends Equatable {}

class CashOutVerifyOTPInitialState extends CashOutVerifyOTPState {
  @override
  List<Object?> get props => ['CashOutVerifyOTPInitialState'];
}

class CashOutVerifyOTPLoadingState extends CashOutVerifyOTPState {
  final String loadingMessage;
  CashOutVerifyOTPLoadingState({required this.loadingMessage});
  @override
  List<Object?> get props => [loadingMessage];
}

class CashOutResendOTPSucsssState extends CashOutVerifyOTPState {
  final String message;
  final PosSendModel model;
  CashOutResendOTPSucsssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class CashOutVerifyOTPSucssState extends CashOutVerifyOTPState {
  final String message;
  final PosVerifyModel model;
  CashOutVerifyOTPSucssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashOutEmitSucssState extends CashOutVerifyOTPState {
  final String message;
  final PosSaleModel model;
  CashOutEmitSucssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashOutVerifyOTPSendSucssState extends CashOutVerifyOTPState {
  final String message;
  final PosSendModel model;
  CashOutVerifyOTPSendSucssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashOutVerifyOTPErrorState extends CashOutVerifyOTPState {
  final String errorMessage;
  CashOutVerifyOTPErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

class CashOutPaymentFieldState extends CashOutVerifyOTPState {
  final String errorMessage;
  CashOutPaymentFieldState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

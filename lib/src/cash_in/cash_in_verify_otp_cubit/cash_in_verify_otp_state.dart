part of 'cash_in_verify_otp_cubit.dart';

abstract class CashInVerifyOTPState extends Equatable {}

class CashInVerifyOTPInitialState extends CashInVerifyOTPState {
  @override
  List<Object?> get props => ['CashInVerifyOTPInitialState'];
}

class VerifyCashInVerifyOTPLoadingState extends CashInVerifyOTPState {
  final String loadingMessage;
  VerifyCashInVerifyOTPLoadingState({required this.loadingMessage});
  @override
  List<Object?> get props => [loadingMessage];
}

class CashInVerifyOTPSucssState extends CashInVerifyOTPState {
  final String message;
  final PosVerifyModel model;
  CashInVerifyOTPSucssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashInEmitSucssState extends CashInVerifyOTPState {
  final String message;
  final PosSaleModel model;
  CashInEmitSucssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashInResendOTPSucsssState extends CashInVerifyOTPState {
  final String message;
  final PosSendModel model;
  CashInResendOTPSucsssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message, model];
}

class CashInVerifyOTPErrorState extends CashInVerifyOTPState {
  final String errorMessage;
  CashInVerifyOTPErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

class CashOutPaymentFieldState extends CashInVerifyOTPState {
  final String errorMessage;
  CashOutPaymentFieldState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

part of 'otp_cubit.dart';

abstract class OtpState extends Equatable {}

class OtpInitialState extends OtpState {
  @override
  List<Object?> get props => ['OtpInitialState'];
}

class VerifyOtpLoadingState extends OtpState {
  final String loadingMessage;
  VerifyOtpLoadingState({required this.loadingMessage});
  @override
  List<Object?> get props => [loadingMessage];
}

class VerifyOTPSucssState extends OtpState {
  final String message;
  final PosVerifyModel model;
  VerifyOTPSucssState({required this.message, required this.model});
  @override
  List<Object?> get props => [message, model];
}

class POSSellSucssState extends OtpState {
  final String message;
  final PosSaleModel model;
  POSSellSucssState({required this.message, required this.model});
  @override
  List<Object?> get props => [message, model];
}

class ResendOtpSendSucssState extends OtpState {
  final String message;
  final PosSendModel model;
  ResendOtpSendSucssState({required this.message, required this.model});
  @override
  List<Object?> get props => [message, model];
}

class VerifyOtpErrorState extends OtpState {
  final String errorMessage;
  VerifyOtpErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

class ScanMePaymentFieldState extends OtpState {
  final String errorMessage;
  ScanMePaymentFieldState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

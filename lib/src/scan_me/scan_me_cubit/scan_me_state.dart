part of 'scan_me_cubit.dart';

abstract class ScanMeState extends Equatable {}

class ScanMeInitialState extends ScanMeState {
  @override
  List<Object?> get props => ['ScanMeInitialState'];
}

class ScanMeLoadingState extends ScanMeState {
  final String loadingMessage;
  ScanMeLoadingState(this.loadingMessage);
  @override
  List<Object?> get props => [loadingMessage];
}

class SendOTPSucsssState extends ScanMeState {
  final String message;
  final PosSendModel model;
  SendOTPSucsssState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class SendOTPErrorState extends ScanMeState {
  final String errorMessage;
  SendOTPErrorState({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

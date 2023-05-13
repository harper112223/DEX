part of 'login_cubit.dart';

abstract class LoginState extends Equatable {}

class LoginInitialState extends LoginState {
  @override
  List<Object?> get props => ['LoginInitialState'];
}

class LoginLoadingState extends LoginState {
  final String message;

  LoginLoadingState(this.message);
  @override
  List<Object?> get props => [message];
}

class LoginLoadedState extends LoginState {
  final String message;
  LoginLoadedState(this.message);
  @override
  List<Object?> get props => [message];
}

class LoginErrorState extends LoginState {
  final String errorMessage;
  LoginErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

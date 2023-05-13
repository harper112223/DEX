part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {}

class DashboardInitialState extends DashboardState {
  @override
  List<Object?> get props => [' DashboardInitialState'];
}

class DashboardLoadingState extends DashboardState {
  final String message;

  DashboardLoadingState(this.message);
  @override
  List<Object?> get props => [message];
}

class DashboardLoadedState extends DashboardState {
  final String message;
  final DashboardModel model;

  DashboardLoadedState({
    required this.message,
    required this.model,
  });
  @override
  List<Object?> get props => [message];
}

class DashboardErrorState extends DashboardState {
  final String errorMessage;
  DashboardErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

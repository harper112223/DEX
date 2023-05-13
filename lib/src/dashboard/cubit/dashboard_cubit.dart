import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/dashboard/dashboard_model.dart';
import 'package:merchant_app/core/repository/dashboard_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepository repository;
  DashboardCubit({required this.repository}) : super(DashboardInitialState()) {
    _getDashboard();
  }

  void _getDashboard() async {
    try {
      emit(DashboardLoadingState("Fetching Dashboard"));
      final email = await MySharedPreferences().getStringValue(Constants.email);
      if (email != '') {
        final model = await repository.dashboard(email: email);
        emit(DashboardLoadedState(
          message: model.status?.message ?? ' Dashboard fetch',
          model: model,
        ));
      }
    } on CustomError catch (e) {
      emit(DashboardErrorState(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(DashboardErrorState("Error: $e"));
    }
  }
}

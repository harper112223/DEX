import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/login_model.dart';
import 'package:merchant_app/core/repository/login_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;
  LoginCubit({required this.repository}) : super(LoginInitialState());

  User? userModel;

  Future<void> login(
    String email,
    String password,
  ) async {
    emit(LoginLoadingState("Loading..."));
    try {
      if (email.validateEmail()) {
        final result = await repository.login(
          email: email,
          password: password,
        );

        ///Listen this [profileImage and name] in homepage
        userModel = result.user;

        await MySharedPreferences().setStringValue(
          key: Constants.profileImage,
          value: result.user?.merchantLogo,
        );

        if (result.result == 'success') {
          await MySharedPreferences().setBooleanValue(
            key: Constants.isLogin,
            value: true,
          );
          emit(LoginLoadedState(result.message ?? "Login successfully"));
        } else {
          emit(LoginErrorState(result.message ?? 'Something went wrong'));
        }
      } else {
        emit(LoginErrorState('Enter valid email id'));
      }
    } on CustomError catch (e) {
      emit(LoginErrorState(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(LoginErrorState('Error: $e'));
    }
  }
}

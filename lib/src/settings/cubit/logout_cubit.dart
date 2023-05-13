import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/settings/profile_image_change_model.dart';
import 'package:merchant_app/core/repository/login_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/src/login/cubit/login_cubit.dart';
import 'package:path_provider/path_provider.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LoginRepository repository;
  final LoginCubit loginCubit;
  LogoutCubit({
    required this.repository,
    required this.loginCubit,
  }) : super(LogoutInitialState()) {
    /// do login to update user details
    _login();
  }

  void logOut() async {
    try {
      emit(LogOutLoading('loading...'));

      ///Clear email
      await MySharedPreferences().setStringValue(
        key: Constants.email,
        value: '',
      );

      ///Clear password
      await MySharedPreferences().setStringValue(
        key: Constants.password,
        value: '',
      );

      //Clear logo URL
      await MySharedPreferences().setStringValue(
        key: Constants.profileImage,
        value: '',
      );

      await MySharedPreferences().setBooleanValue(
        key: Constants.isLogin,
        value: false,
      );

      await MySharedPreferences().setIntValue(
        key: Constants.isagent,
        value: 0,
      );

      ///Clear app chache
      await _deleteCacheDir();

      emit(LogOutSuccess("user logout successfully"));
    } on CustomError catch (e) {
      emit(LogOutError(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(LogOutError("$e"));
    }
  }

  Future<void> _deleteCacheDir() async {
    var tempDir = await getTemporaryDirectory();
    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  }

  void changeProfilePic({required XFile file}) async {
    try {
      emit(LogOutLoading('loading...'));
      final profileModel = await repository.changeProfileImage(
        file: file,
        keyName: "image",
      );
      await _login();
      emit(
        ProfileChangeSucess(
          model: profileModel,
          message: profileModel.message?.success?[0].toString() ??
              'Profile Image updated Sucessfully',
        ),
      );
    } on CustomError catch (e) {
      emit(LogOutError(e.message ?? 'Something went wrong'));
    } catch (e) {
      emit(LogOutError("$e"));
    }
  }

  Future<void> _login() async {
    final email = await MySharedPreferences().getStringValue(Constants.email);
    final password =
        await MySharedPreferences().getStringValue(Constants.password);
    await loginCubit.login(email, password);
  }
}

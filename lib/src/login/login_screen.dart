import 'package:flutter/material.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/login/cubit/login_cubit.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/textfield/secondary_textform_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: ColorName.primaryRed,
          title: Assets.images.whitelogo.image(
            fit: BoxFit.fill,
          ),
        ),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginLoadedState) {
              state.message.showSnackBar(context);
              Navigator.of(context)
                  .pushReplacementNamed(ScreenNames.homeScreen);
            } else if (state is LoginErrorState) {
              _passwordController.clear();
              state.errorMessage.showSnackBar(context);
            }
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return LoadingScreen(loadingMessage: state.message);
            } else {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20.0),
                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 48.0,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    SecondaryTextFormField(
                      textEditingController: _emailController,
                      labelText: "Email",
                    ),
                    const SizedBox(height: 16.0),
                    SecondaryTextFormField(
                      obscureText: true,
                      textEditingController: _passwordController,
                      labelText: "Password",
                    ),
                    SizedBox(height: size.height * 0.1),
                    PrimaryButton(
                      text: "LOGIN",
                      onTap: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          context.read<LoginCubit>().login(
                                _emailController.text,
                                _passwordController.text,
                              );
                        }
                      },
                    ),
                  ],
                ),
              );
            }
          },
        ));
  }
}

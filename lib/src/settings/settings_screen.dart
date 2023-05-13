// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/login/cubit/login_cubit.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/settings/cubit/logout_cubit.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ImagePicker _picker = ImagePicker();

  void _pickImage(ImageSource imageSource) async {
    final XFile? image = await _picker.pickImage(source: imageSource);
    if (image != null) {
      context.read<LogoutCubit>().changeProfilePic(file: image);
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Select Option'),
          actions: <Widget>[
            TextButton(
              child: const Text('Camera'),
              onPressed: () {
                _pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Gallery'),
              onPressed: () {
                _pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    final constSpacing = SizedBox(height: size.height * 0.02);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        backgroundColor: ColorName.primaryRed,
        textColor: Colors.white,
      ),
      body: BlocConsumer<LogoutCubit, LogoutState>(
        listener: (context, state) {
          if (state is LogOutError) {
            state.errorMessage.showSnackBar(context);
          } else if (state is ProfileChangeSucess) {
            state.message.showSnackBar(context);
          } else if (state is LogOutSuccess) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              ScreenNames.loginScreen,
              (Route<dynamic> route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is LogOutLoading) {
            return LoadingScreen(loadingMessage: state.loadingMessage);
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  constSpacing,
                  Center(
                    child: GestureDetector(
                      onTap: _showMyDialog,
                      child: SizedBox(
                        height: 75,
                        width: 75,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            (context
                                            .watch<LoginCubit>()
                                            .userModel
                                            ?.merchantLogo ==
                                        null ||
                                    context
                                            .watch<LoginCubit>()
                                            .userModel
                                            ?.merchantLogo ==
                                        '')
                                ? Constants.defaultImageAvatr
                                : context
                                        .watch<LoginCubit>()
                                        .userModel
                                        ?.merchantLogo ??
                                    Constants.defaultImageAvatr,
                          ),
                          backgroundColor: ColorName.primaryRed,
                          radius: 80,
                        ),
                      ),
                    ),
                  ),
                  constSpacing,
                  Text(
                    (context.watch<LoginCubit>().userModel?.name == null)
                        ? "Xenio"
                        : context.watch<LoginCubit>().userModel?.name ??
                            "Xenio",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: themeData.textTheme.headline4!.copyWith(
                      color: themeData.colorScheme.onSurface,
                    ),
                  ),
                  constSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.locationPin,
                        color: ColorName.primaryRed,
                        size: 16.0,
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        '${context.watch<LoginCubit>().userModel?.merchantAddress?.address ?? ''} ${context.watch<LoginCubit>().userModel?.merchantAddress?.country ?? ''}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: themeData.textTheme.button!.copyWith(
                          color: themeData.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                  constSpacing,
                  PrimaryButton(
                    width: size.width * 0.26,
                    text: "✎ EDIT",
                    textColor: Colors.white,
                    color: ColorName.primaryRed,
                    onTap: _showMyDialog,
                  ),
                  SizedBox(height: size.height * 0.2),
                  Container(
                    height: size.height * 0.43,
                    decoration: BoxDecoration(
                      color: themeData.cardColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(42.0),
                        topRight: Radius.circular(42.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              context.read<LogoutCubit>().logOut();
                            },
                            leading: ImageIcon(AssetImage("assets/images/logout.png"),color: ColorName.primaryRed),
                            title: const Text("Logout"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                          const SizedBox(height: 50.0),
                          const Text(
                            "Design by Xenio",
                            style: TextStyle(
                              color: ColorName.primaryRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

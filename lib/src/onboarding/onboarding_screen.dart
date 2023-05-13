import 'package:flutter/material.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.6),
            const Text(
              "Send Money",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Fusce non volutpat nisi. Phasellus congue iaculis magna quis viverra. Integer nec augue placerat. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            PrimaryButton(
              text: "GET STARTED",
              onTap: () async {
                await MySharedPreferences().setBooleanValue(
                    key: Constants.isOnboardingDone, value: true);
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushNamed(ScreenNames.homeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

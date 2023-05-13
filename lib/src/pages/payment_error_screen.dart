import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';

class PaymentErrorScreen extends StatelessWidget {
  final String errorMessage;
  const PaymentErrorScreen({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                Constants.paymentFailedAnimation,
                onLoaded: (composition) {},
              ),
              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              PrimaryButton(
                width: size.width * 0.7,
                text: 'Home',
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ScreenNames.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:merchant_app/core/constants/constants.dart';

class LoadingScreen extends StatelessWidget {
  final String loadingMessage;
  const LoadingScreen({Key? key, this.loadingMessage = 'Loading'})
      : super(key: key);

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
                Constants.loadingAnimation,
                height: size.height * 0.2,
                onLoaded: (composition) {},
              ),
              Text(
                '$loadingMessage ',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

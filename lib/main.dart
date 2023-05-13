import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get_it/get_it.dart';
import 'package:merchant_app/core/app_configs/routes_generator.dart';
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/dependency_injection/service_locator.dart';
import 'package:merchant_app/core/repository/login_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/src/home/home_screen.dart';
import 'package:merchant_app/src/login/cubit/login_cubit.dart';
import 'package:merchant_app/src/login/login_screen.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/settings/cubit/logout_cubit.dart';

Future<void> main() async {
  serviceLoactor();
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = "pk_test_51Losh4SHTMXIWpOL8v8RfED8obHP7kggRxTWeb0JtfhPyFByRghNsZmN8ZabiWdOKa5J1NhMNgS4epfGSlI9pIVU00s11OtuhU";
  // Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  // Stripe.urlScheme = 'flutterstripe';
  //await Stripe.instance.applySettings();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(
            repository: GetIt.I<LoginRepository>(),
          ),
        ),
        BlocProvider<LogoutCubit>(
          create: (context) => LogoutCubit(
            repository: GetIt.I<LoginRepository>(),
            loginCubit: context.read<LoginCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Mearchant App',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generate,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: FutureBuilder<bool>(
            future: _getLoginStatus(),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (!snapshot.hasError) {
                if (snapshot.data != null) {
                  if (snapshot.data!) {
                    return const HomeScreen();
                  } else {
                    return const LoginScreen();
                  }
                } else {
                  return const Center(child: LoadingScreen());
                }
              }
              return const Center(child: LoadingScreen());
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _getLoginStatus() async {
    final result =
        await MySharedPreferences().getBooleanValue(Constants.isLogin);
    return result;
  }
}

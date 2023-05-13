import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';
import 'package:merchant_app/core/repository/dashboard_repository.dart';
import 'package:merchant_app/core/repository/scan_me_repo.dart';
import 'package:merchant_app/core/repository/transactions_repository.dart';
import 'package:merchant_app/src/cash_in/cash_in_screen.dart';
import 'package:merchant_app/src/nfc/card_pin/card_pin_screen.dart';
import 'package:merchant_app/src/nfc/card_pin/cubit/card_pin_cubit.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/crypto_list_screen.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/cubit/crypto_list_cubit.dart';
import 'package:merchant_app/src/nfc/nfc_repo.dart';
import 'package:merchant_app/src/cash_in/cash_in_send_otp_cubit/cash_in_send_otp_cubit.dart';
import 'package:merchant_app/src/cash_in/cash_in_verify_otp_cubit/cash_in_verify_otp_cubit.dart';
import 'package:merchant_app/src/cash_in/cash_in_verify_otp_screen.dart';
import 'package:merchant_app/src/cash_out/cash_out_screen.dart';
import 'package:merchant_app/src/cash_out/cash_out_send_otp_cubit/cash_out_send_otp_cubit.dart';
import 'package:merchant_app/src/cash_out/cash_out_verify_otp_cubit/cash_out_verify_otp_cubit.dart';
import 'package:merchant_app/src/cash_out/cash_out_verify_screen.dart';
import 'package:merchant_app/src/dashboard/cubit/dashboard_cubit.dart';
import 'package:merchant_app/src/dashboard/dashboard_screen.dart';
import 'package:merchant_app/src/home/home_screen.dart';
import 'package:merchant_app/src/login/login_screen.dart';
import 'package:merchant_app/src/nfc/nfc_currency/cubit/nfc_currency_cubit.dart';
import 'package:merchant_app/src/nfc/nfc_currency/nfc_currency_screen.dart';
import 'package:merchant_app/src/pages/payment_error_screen.dart';
import 'package:merchant_app/src/scan_me/otp_screen/cubit/otp_cubit.dart';
import 'package:merchant_app/src/scan_me/otp_screen/verify_otp_screen.dart';
import 'package:merchant_app/src/scan_me/receipt_screen.dart';
import 'package:merchant_app/src/scan_me/scan_me_cubit/scan_me_cubit.dart';
import 'package:merchant_app/src/scan_me/scan_me_screen.dart';
import 'package:merchant_app/src/scan_me/tap_me_screen.dart';
import 'package:merchant_app/src/settings/settings_screen.dart';
import 'package:merchant_app/src/transaction/cubit/transaction_cubit.dart';
import 'package:merchant_app/src/transaction/transaction_screen.dart';

Route<dynamic> generate(RouteSettings settings) {
  switch (settings.name) {
    case ScreenNames.transactionScreen:
      return MaterialPageRoute(
        builder: (context) => BlocProvider<TransactionCubit>(
          create: (context) => TransactionCubit(
            repository: GetIt.I<TransactionsRepository>(),
          ),
          child: const TransactionScreen(),
        ),
      );

    case ScreenNames.homeScreen:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    case ScreenNames.settingsScreen:
      return MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      );

    case ScreenNames.loginScreen:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case ScreenNames.paymentErrorScreen:
      final Map<String, dynamic> arg =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => PaymentErrorScreen(
          errorMessage: arg['errorMessage'],
        ),
      );

    case ScreenNames.cashOutScreen:
      return MaterialPageRoute(
        builder: (context) => BlocProvider<CashOutSendOTPCubit>(
          create: (context) => CashOutSendOTPCubit(
            repository: GetIt.I<AgentRepository>(),
          ),
          child: const CashOutScreen(),
        ),
      );

    case ScreenNames.cashInScreen:
      return MaterialPageRoute(
        builder: (context) => BlocProvider<CashInSendOTPCubit>(
          create: (context) => CashInSendOTPCubit(
            repository: GetIt.I<AgentRepository>(),
          ),
          child: const CashInScreen(),
        ),
      );

    case ScreenNames.receiptScreen:
      final Map<String, dynamic> arg =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ReceiptScreen(
          posSellModel: arg['posSellModel'],
          amount: arg['amount'],
          currency: arg['currency'],
          receiptType: arg['receiptType'] ??= "SALE",
        ),
      );

    // case ScreenNames.onboardingScreen:
    //   return MaterialPageRoute(
    //     builder: (context) => const OnboardingScreen(),
    //   );

    case ScreenNames.scanMeScreen:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<ScanMeCubit>(
          create: (context) => ScanMeCubit(
            repository: GetIt.I<ScanMeRepository>(),
          ),
          child: ScanMeScreen(
            type: arg['type'],
          ),
        ),
      );

    case ScreenNames.fiatTapMeScreen:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<ScanMeCubit>(
          create: (context) => ScanMeCubit(
            repository: GetIt.I<ScanMeRepository>(),
          ),
          child: TapMeScreen(
            amount: arg['amount'],
            currency: arg['currency'],
          ),
        ),
      );

    case ScreenNames.cryptoScanToPay:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<NfcCurrencyCubit>(
          create: (context) => NfcCurrencyCubit(
            repository: GetIt.I<NFCRepository>(),
          ),
          child: CryptoNFCAmountScreen(
            type: arg['type'],
          ),
        ),
      );

    case ScreenNames.cryptoList:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(

        builder: (context) => BlocProvider<CryptoListCubit>(
          create: (context) => CryptoListCubit(
            repository: GetIt.I<NFCRepository>(),
          ),
          child: CryptoListScreen(
            amount: arg['amount'],
            currency: arg['currency'],
            type: arg['type'],
          ),
        ),
      );

    case ScreenNames.cardPin:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<CardPinCubit>(
          create: (context) => CardPinCubit(
            repository: GetIt.I<NFCRepository>(),
          ),
          child: CryptoPinScreen(
            amount: arg['amount'],
            currency: arg['currency'],
            cardhash: arg['cardhash'],
            code: arg['code'],

          ),
        ),
      );

    case ScreenNames.verifyOTPScreen:
      final Map<String, dynamic> arg =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<OtpCubit>(
          create: (context) => OtpCubit(
            repository: GetIt.I<ScanMeRepository>(),
          ),
          child: VerifyOTPScreen(
            cardScanResponse: arg['cardScanResponse'],
            amount: arg['amount'],
            currency: arg['currency'],
          ),
        ),
      );

    case ScreenNames.cashOutVerifyOTPScreen:
      final Map<String, dynamic> arg =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<CashOutVerifyOTPCubit>(
          create: (context) => CashOutVerifyOTPCubit(
            repository: GetIt.I<AgentRepository>(),
          ),
          child: CashOutVerifyOTPScreen(
            cardScanResponse: arg['cardScanResponse'],
            amount: arg['amount'],
          ),
        ),
      );

    case ScreenNames.cashInVerifyOTPScreen:
      final Map<String, dynamic> arg =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => BlocProvider<CashInVerifyOTPCubit>(
          create: (context) => CashInVerifyOTPCubit(
            repository: GetIt.I<AgentRepository>(),
          ),
          child: CashInVerifyOTPScreen(
            cardScanResponse: arg['cardScanResponse'],
            amount: arg['amount'],
          ),
        ),
      );

    case ScreenNames.dashboardScreen:
      return MaterialPageRoute(
        builder: (context) => BlocProvider<DashboardCubit>(
          create: (context) => DashboardCubit(
            repository: GetIt.I<DashboardRepository>(),
          ),
          child: const DashboardScreen(),
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
  }
}

import 'package:get_it/get_it.dart';
import 'package:merchant_app/core/repository/agent_repository.dart';
import 'package:merchant_app/core/repository/dashboard_repository.dart';
import 'package:merchant_app/core/repository/login_repository.dart';
import 'package:merchant_app/core/repository/profile_image_repo.dart';
import 'package:merchant_app/core/repository/sale_repository.dart';
import 'package:merchant_app/core/repository/scan_me_repo.dart';
import 'package:merchant_app/core/repository/send_otp_repo.dart';
import 'package:merchant_app/core/repository/transactions_repository.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/dio_http_service.dart';
import 'package:merchant_app/core/services/shared_preferences/api_client/http_service.dart';
import 'package:merchant_app/src/nfc/nfc_repo.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerLazySingleton<HttpService>(() => DioHttpService());

  getIt.registerFactory<LoginRepository>(
    () => LoginRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<DashboardRepository>(
    () => DashboardRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<ProfileImageRepo>(
    () => ProfileImageRepo(
      httpService: GetIt.I<HttpService>(),
    ),
  );
  getIt.registerFactory<NFCRepository>(
        () => NFCRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<SaleRepository>(
    () => SaleRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<SendOTPRepository>(
    () => SendOTPRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<TransactionsRepository>(
    () => TransactionsRepository(
      httpService: GetIt.I<HttpService>(),
    ),
  );

  getIt.registerFactory<ScanMeRepository>(
      () => ScanMeRepository(httpService: GetIt.I<HttpService>()));

  getIt.registerFactory<AgentRepository>(
      () => AgentRepository(httpService: GetIt.I<HttpService>()));
}

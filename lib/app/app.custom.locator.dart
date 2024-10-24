import 'package:d365_integration/app/app.router.dart';
import 'package:d365_integration/services/d365/d365_client.dart';
import 'package:d365_integration/services/d365/d365_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:dio/dio.dart';

final _locator = StackedLocator.instance;
const endpoint = 'https://skygo-d365-integration.azurewebsites.net/';

Future<void> customSetupLocator({
  EnvironmentFilter? environmentFilter,
  StackedRouterWeb? stackedRouter,
}) async {
  // Custom dependencies
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  // Add logging interceptor for non-production environments
  //if (env != 'Prod') {
  dio.interceptors.add(LogInterceptor(responseBody: true));
  //}

  // _locator.registerSingleton(dio);
  // _locator.registerLazySingleton(() => AuthGuardService());

  _locator.registerLazySingleton(
    () => D365Client(dio, baseUrl: endpoint),
  );
  _locator.registerLazySingleton(() => D365Service());
}

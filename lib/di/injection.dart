import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_home_app/infrastructure/api/client/weather_api_service.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);

  getIt.registerFactory<WeatherApiService>(() => WeatherApiService.create());
}

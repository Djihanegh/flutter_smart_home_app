import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_home_app/domain/core/failures.dart';
import 'package:smart_home_app/infrastructure/api/client/weather_api_service.dart';

import '../../config/injection.dart';
import '../../domain/weather/i_weather_facade.dart';
import '../api/exception/exception.dart';

@LazySingleton(as: IWeatherFacade)
class WeatherFacade with HttpHandlerMixin implements IWeatherFacade {
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> getCurrentWeather(
      String appId, double lat, double long) async {
    Response? result;
    try {
      final result =
          await getIt<WeatherApiService>().getCurrentWeather(lat, long, appId);

      log(result.statusCode.toString());

      if (result.isSuccessful) {
        return right(result.body!);
      } else {
        log("APIIIIII");
        log(result.error.toString());
        // final ApiResponse response =
        //    ApiResponse.fromJson({"msg": result.error});
        return left(ServerFailure.apiFailure(msg: ""));
      }
    } catch (e) {
      log(e.toString());
      return left(ServerFailure.serverError(msg: catchExceptions(result, e)));
    }
  }
}

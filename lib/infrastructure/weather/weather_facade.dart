import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_home_app/domain/core/failures.dart';
import 'package:smart_home_app/infrastructure/api/client/weather_api_service.dart';

import '../../di/injection.dart';
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

      if (result.isSuccessful) {
        return right(result.body!);
      } else {
        // final ApiResponse response =
        //    ApiResponse.fromJson({"msg": result.error});
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      return left(ServerFailure.serverError(msg: catchExceptions(result, e)));
    }
  }
}

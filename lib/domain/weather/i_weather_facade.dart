import 'package:dartz/dartz.dart';

import '../core/failures.dart';

abstract class IWeatherFacade {
  Future<Either<ServerFailure, Map<String, dynamic>>> getCurrentWeather(
      String appId, double lat, double long);
}

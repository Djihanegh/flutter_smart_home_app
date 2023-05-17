import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_home_app/application/weather/weather_bloc.dart';
import 'package:smart_home_app/config/api_key.dart';
import 'package:smart_home_app/domain/core/failures.dart';
import 'package:smart_home_app/domain/weather/i_weather_facade.dart';

class MockWeatherRepository extends Mock implements IWeatherFacade {}

const apiKey = APIKeys.openWeatherAPIKey;

const lat = 36.895345;
const long = 7.758886;

const Map<String, dynamic> data = {
  "coord": {"lon": 7.7544, "lat": 36.9258},
  "weather": [
    {"id": 803, "main": "Clouds", "description": "broken clouds", "icon": "04d"}
  ],
  "base": "stations",
  "main": {
    "temp": 291.03,
    "feels_like": 290.65,
    "temp_min": 291.03,
    "temp_max": 291.03,
    "pressure": 1013,
    "humidity": 68
  },
  "visibility": 10000,
  "wind": {"speed": 6.17, "deg": 30},
  "clouds": {"all": 75},
  "dt": 1684343519,
  "sys": {
    "type": 1,
    "id": 1073,
    "country": "DZ",
    "sunrise": 1684297201,
    "sunset": 1684348255
  },
  "timezone": 3600,
  "id": 2506999,
  "name": "Annaba",
  "cod": 200
};

void main() {
  late MockWeatherRepository weatherMock;
  late WeatherBloc bloc;

  setUp(() {
    weatherMock = MockWeatherRepository();
    bloc = WeatherBloc(weatherMock);
  });

  blocTest(
    'should emit [WeatherLoadingState, WeatherSuccessState] : success case',
    build: () {
      when(() => weatherMock.getCurrentWeather(apiKey, lat, long))
          .thenAnswer((_) async => const Right(data));
      return bloc;
    },
    act: (dynamic b) =>
        b.add(const WeatherEvent.getCurrentWeather(apiKey, lat, long)),
    expect: () => [
      WeatherState(
          getCurrentWeather: none(),
          data: {},
          errorMessage: '',
          status: WeatherStatus.loading),
      WeatherState(
          getCurrentWeather: none(),
          data: data,
          status: WeatherStatus.success,
          errorMessage: '')
    ],
  );

  blocTest(
    'should emit [WeatherLoadingState, WeatherFailureState] : failure case',
    build: () {
      when(() => weatherMock.getCurrentWeather(apiKey, lat, long))
          .thenAnswer((_) async => const Left(ServerFailure.apiFailure()));
      return bloc;
    },
    act: (dynamic b) =>
        b.add(const WeatherEvent.getCurrentWeather(apiKey, lat, long)),
    expect: () => [
      WeatherState(
          getCurrentWeather: none(),
          data: {},
          errorMessage: '',
          status: WeatherStatus.loading),
      WeatherState(
          getCurrentWeather: none(),
          data: data,
          status: WeatherStatus.success,
          errorMessage: '')
    ],
  );
}

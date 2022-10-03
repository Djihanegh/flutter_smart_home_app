part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getCurrentWeather(
      String appId, double lat, double long) = GetCurrentWeather;
}

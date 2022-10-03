part of 'weather_bloc.dart';

enum WeatherStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == WeatherStatus.initial;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    Option<Either<ServerFailure, Map<String, dynamic>>>? getCurrentWeather,
    Map<String, dynamic>? data,
    @Default(WeatherStatus.initial) WeatherStatus status,
    String? errorMessage,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
      data: {},
      getCurrentWeather: none(),
      status: WeatherStatus.initial,
      errorMessage: "");
}

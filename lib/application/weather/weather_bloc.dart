import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_home_app/domain/weather/i_weather_facade.dart';
import '../../domain/core/failures.dart';

part 'weather_bloc.freezed.dart';

part 'weather_event.dart';

part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherFacade weatherFacade;

  WeatherBloc(this.weatherFacade) : super(WeatherState.initial()) {
    //on<GetCurrentWeather>(_onGetCurrentWeather);
  }
}

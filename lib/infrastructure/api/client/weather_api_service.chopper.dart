// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WeatherApiService extends WeatherApiService {
  _$WeatherApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherApiService;

  @override
  Future<Response<String>> getCurrentWeather(
    double latitude,
    double longitude,
    String appId,
  ) {
    final $url = 'https://api.openweathermap.org/data/2.5/weather';
    final $params = <String, dynamic>{
      'lat': latitude,
      'long': longitude,
      'appid': appId,
    };
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }
}

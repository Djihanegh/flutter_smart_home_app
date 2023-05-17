import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;

import '../../../config/endpoint.dart';
import '../../core/converter.dart';
import '../../core/interceptor.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi(baseUrl: "$weatherEndpoint/data/2.5")
abstract class WeatherApiService extends ChopperService {
  //************************************** GET REQUESTS *********************************************** */
  @Get(path: '/weather')
  Future<Response<Map<String, dynamic>>> getCurrentWeather(
    @Query('lat') double latitude,
    @Query('lon') double longitude,
    @Query('appid') String appId,
  );

  static WeatherApiService create() {
    Uri url = Uri.parse('$weatherEndpoint/data/2.5');
    final client = ChopperClient(
      baseUrl: url,
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 60),
      ),
      services: [
        _$WeatherApiService(),
      ],
      converter: const JsonSerializableConverter({
        //  User: User.fromJsonFactory,
      }),
      errorConverter: const JsonSerializableConverter({
        // ApiResponse: ApiResponse.fromJsonFactory,
      }),
      interceptors: [
        HttpLoggingInterceptor(),
        Interceptor(),
        CurlInterceptor(),
        (Response response) async {
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }

          return response;
        },
      ],
    );

    return _$WeatherApiService(client);
  }
}

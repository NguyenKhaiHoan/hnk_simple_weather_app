import 'package:dio/dio.dart';
import 'package:hnk_simple_weather_app/src/core/api/api.dart';
import 'package:hnk_simple_weather_app/src/data/models/weather_model.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: HAppApi.weatherBaseUrl)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio) = _WeatherApiService;

  /// Daily Weather, visit at 'https://open-meteo.com/en/docs'
  /// required [latitude] and [longitude]
  /// return [WeatherModel]
  @GET(
      '/v1/forecast?latitude={lat}&longitude={long}&daily=temperature_2m_max,temperature_2m_min,weather_code&timezone=auto')
  Future<HttpResponse<WeatherModel>> getDailyWeather({
    @Path('lat') required double lat,
    @Path('long') required double long,
  });

  /// Hourly Weather, visit at 'https://open-meteo.com/en/docs'
  /// required [latitude] and [longitude]
  /// return [WeatherModel]
  @GET(
      '/v1/forecast?latitude={lat}&longitude={long}&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m,surface_pressure,weather_code&timezone=auto')
  Future<HttpResponse<WeatherModel>> getHourlyWeather({
    @Path('lat') required double lat,
    @Path('long') required double long,
  });
}

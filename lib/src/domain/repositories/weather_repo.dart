import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/requests/weather_request.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<ExceptionHandler, WeatherEntity>> getDailyWeather(
      WeatherRequest request);
  Future<Either<ExceptionHandler, WeatherEntity>> getHourlyWeather(
      WeatherRequest request);
}

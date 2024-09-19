import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/data/datasources/remote/weather_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/requests/weather_request.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/weather_repo.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDatasource _weatherRemoteDatasource;

  WeatherRepositoryImpl(this._weatherRemoteDatasource);

  @override
  Future<Either<ExceptionHandler, WeatherEntity>> getDailyWeather(
      WeatherRequest request) {
    return _weatherRemoteDatasource.getDailyWeather(request);
  }

  @override
  Future<Either<ExceptionHandler, WeatherEntity>> getHourlyWeather(
      WeatherRequest request) {
    return _weatherRemoteDatasource.getHourlyWeather(request);
  }
}

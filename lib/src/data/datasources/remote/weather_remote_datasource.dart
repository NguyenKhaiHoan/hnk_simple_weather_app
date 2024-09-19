import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/base/base_api_remote_datasource.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/service/weather_api_service.dart';
import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/requests/weather_request.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';

abstract class WeatherRemoteDatasource {
  Future<Either<ExceptionHandler, WeatherEntity>> getDailyWeather(
      WeatherRequest request);
  Future<Either<ExceptionHandler, WeatherEntity>> getHourlyWeather(
      WeatherRequest request);
}

class WeatherRemoteDataSourceImpl extends BaseApiRemoteDatasource
    implements WeatherRemoteDatasource {
  WeatherRemoteDataSourceImpl(this._weatherApiService);

  final WeatherApiService _weatherApiService;

  @override
  Future<Either<ExceptionHandler, WeatherEntity>> getDailyWeather(
      WeatherRequest request) async {
    return handleApiCall<WeatherEntity>(
        apiCall: () => _weatherApiService.getDailyWeather(
            lat: request.latitude, long: request.longitude),
        modelToEntity: (model) => WeatherMapper().modelToEntity(model));
  }

  @override
  Future<Either<ExceptionHandler, WeatherEntity>> getHourlyWeather(
      WeatherRequest request) async {
    return handleApiCall<WeatherEntity>(
        apiCall: () => _weatherApiService.getHourlyWeather(
            lat: request.latitude, long: request.longitude),
        modelToEntity: (model) => WeatherMapper().modelToEntity(model));
  }
}

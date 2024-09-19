import 'package:dartz/dartz.dart';
import 'package:hnk_simple_weather_app/src/core/network/exception_handler.dart';
import 'package:hnk_simple_weather_app/src/core/usecases/usecases.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/requests/weather_request.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/repositories/weather_repo.dart';

class GetHourlyWeatherUseCase
    implements UseCaseRemote<ExceptionHandler, WeatherEntity, WeatherRequest> {
  final WeatherRepository _weatherRepository;

  GetHourlyWeatherUseCase(this._weatherRepository);

  @override
  Future<Either<ExceptionHandler, WeatherEntity>> call(
      {WeatherRequest? params}) {
    return _weatherRepository.getHourlyWeather(params!);
  }
}

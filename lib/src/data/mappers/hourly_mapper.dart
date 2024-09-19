import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/hourly_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/hourly_entity.dart';

class HourlyMapper extends Mapper<HourlyModel, HourlyEntity> {
  @override
  HourlyEntity modelToEntity(HourlyModel model) {
    return HourlyEntity(
      time: model.time,
      weatherCode: model.weatherCode,
      temperature2m: model.temperature2m,
      relativeHumidity2m: model.relativeHumidity2m,
      windSpeed10m: model.windSpeed10m,
      surfacePressure: model.surfacePressure,
    );
  }

  @override
  HourlyModel entityToModel(HourlyEntity entity) {
    return HourlyModel(
      time: entity.time,
      weatherCode: entity.weatherCode,
      temperature2m: entity.temperature2m,
      relativeHumidity2m: entity.relativeHumidity2m,
      windSpeed10m: entity.windSpeed10m,
      surfacePressure: entity.surfacePressure,
    );
  }
}

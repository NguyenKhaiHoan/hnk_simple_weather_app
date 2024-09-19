import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/weather_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/weather_entity.dart';

class WeatherMapper extends Mapper<WeatherModel, WeatherEntity> {
  @override
  WeatherEntity modelToEntity(WeatherModel model) {
    return WeatherEntity(
      latitude: model.latitude,
      longitude: model.longitude,
      generationtimeMs: model.generationtimeMs,
      utcOffsetSeconds: model.utcOffsetSeconds,
      timezone: model.timezone,
      timezoneAbbreviation: model.timezoneAbbreviation,
      elevation: model.elevation,
      daily: model.daily != null
          ? DailyMapper().modelToEntity(model.daily!)
          : null,
      hourly: model.hourly != null
          ? HourlyMapper().modelToEntity(model.hourly!)
          : null,
    );
  }

  @override
  WeatherModel entityToModel(WeatherEntity entity) {
    return WeatherModel(
      latitude: entity.latitude,
      longitude: entity.longitude,
      generationtimeMs: entity.generationtimeMs,
      utcOffsetSeconds: entity.utcOffsetSeconds,
      timezone: entity.timezone,
      timezoneAbbreviation: entity.timezoneAbbreviation,
      elevation: entity.elevation,
      daily: entity.daily != null
          ? DailyMapper().entityToModel(entity.daily!)
          : null,
      hourly: entity.hourly != null
          ? HourlyMapper().entityToModel(entity.hourly!)
          : null,
    );
  }
}

import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/daily_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/daily_entity.dart';

class DailyMapper extends Mapper<DailyModel, DailyEntity> {  
  @override
  DailyEntity modelToEntity(DailyModel model) {
    return DailyEntity(
      time: model.time,
      weatherCode: model.weatherCode,
      temperature2MMax: model.temperature2MMax,
      temperature2MMin: model.temperature2MMin,
    );
  }

  @override
  DailyModel entityToModel(DailyEntity entity) {
    return DailyModel(
      time: entity.time,
      weatherCode: entity.weatherCode,
      temperature2MMax: entity.temperature2MMax,
      temperature2MMin: entity.temperature2MMin,
    );
  }
}

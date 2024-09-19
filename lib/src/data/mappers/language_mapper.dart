import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/language_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/language_entity.dart';

class LanguageMapper extends Mapper<LanguageModel, LanguageEntity> {
  @override
  LanguageEntity modelToEntity(LanguageModel model) {
    return LanguageEntity(
      code: model.code,
      value: model.value,
    );
  }

  @override
  LanguageModel entityToModel(LanguageEntity entity) {
    return LanguageModel(
      code: entity.code,
      value: entity.value,
    );
  }
}

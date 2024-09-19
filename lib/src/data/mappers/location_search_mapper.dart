import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/location_search_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_search_entity.dart';

class LocationSearchMapper
    extends Mapper<LocationSearchModel, LocationSearchEntity> {
  @override
  LocationSearchEntity modelToEntity(LocationSearchModel model) {
    return LocationSearchEntity(
      results: model.results
          ?.map((city) => LocationMapper().modelToEntity(city))
          .toList(),
      generationtimeMs: model.generationtimeMs,
    );
  }

  @override
  LocationSearchModel entityToModel(LocationSearchEntity entity) {
    return LocationSearchModel(
      results: entity.results
          ?.map((city) => LocationMapper().entityToModel(city))
          .toList(),
      generationtimeMs: entity.generationtimeMs,
    );
  }
}

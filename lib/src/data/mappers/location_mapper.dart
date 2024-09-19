import 'package:hnk_simple_weather_app/src/data/mappers/mapper.dart';
import 'package:hnk_simple_weather_app/src/data/models/location_model.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_entity.dart';

class LocationMapper extends Mapper<LocationModel, LocationEntity> {
  @override
  LocationEntity modelToEntity(LocationModel model) {
    return LocationEntity(
      id: model.id,
      name: model.name,
      latitude: model.latitude,
      longitude: model.longitude,
      elevation: model.elevation,
      featureCode: model.featureCode,
      countryCode: model.countryCode,
      timezone: model.timezone,
      population: model.population,
      countryId: model.countryId,
      country: model.country,
    );
  }

  @override
  LocationModel entityToModel(LocationEntity entity) {
    return LocationModel(
      id: entity.id,
      name: entity.name,
      latitude: entity.latitude,
      longitude: entity.longitude,
      elevation: entity.elevation,
      featureCode: entity.featureCode,
      countryCode: entity.countryCode,
      timezone: entity.timezone,
      population: entity.population,
      countryId: entity.countryId,
      country: entity.country,
    );
  }
}

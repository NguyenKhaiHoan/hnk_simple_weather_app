export 'daily_mapper.dart';
export 'hourly_mapper.dart';
export 'language_mapper.dart';
export 'location_mapper.dart';
export 'location_search_mapper.dart';
export 'weather_mapper.dart';

abstract class Mapper<M, E> {
  E modelToEntity(M model);
  M entityToModel(E entity);
}

import 'package:hnk_simple_weather_app/src/domain/entities/responses/location_entity.dart';

class LocationSearchEntity {
  final List<LocationEntity>? results;
  final double? generationtimeMs;

  const LocationSearchEntity({
    this.results,
    this.generationtimeMs,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationSearchEntity &&
          runtimeType == other.runtimeType &&
          results == other.results &&
          generationtimeMs == other.generationtimeMs;

  @override
  int get hashCode => results.hashCode ^ generationtimeMs.hashCode;
}

class LocationEntity {
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final num? elevation;
  final String? featureCode;
  final String? countryCode;
  final String? timezone;
  final int? population;
  final int? countryId;
  final String? country;

  const LocationEntity({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.elevation,
    this.featureCode,
    this.countryCode,
    this.timezone,
    this.population,
    this.countryId,
    this.country,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          elevation == other.elevation &&
          featureCode == other.featureCode &&
          countryCode == other.countryCode &&
          timezone == other.timezone &&
          population == other.population &&
          countryId == other.countryId &&
          country == other.country;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      elevation.hashCode ^
      featureCode.hashCode ^
      countryCode.hashCode ^
      timezone.hashCode ^
      population.hashCode ^
      countryId.hashCode ^
      country.hashCode;
}

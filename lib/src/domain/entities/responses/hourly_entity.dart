class HourlyEntity {
  final List<DateTime>? time;
  final List<int>? weatherCode;
  final List<double>? temperature2m;
  final List<double>? relativeHumidity2m;
  final List<double>? windSpeed10m;
  final List<double>? surfacePressure;

  const HourlyEntity({
    this.time,
    this.weatherCode,
    this.temperature2m,
    this.relativeHumidity2m,
    this.windSpeed10m,
    this.surfacePressure,
  });

  static HourlyEntity get empty => const HourlyEntity(
      time: [],
      weatherCode: [],
      temperature2m: [],
      relativeHumidity2m: [],
      windSpeed10m: [],
      surfacePressure: []);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourlyEntity &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          weatherCode == other.weatherCode &&
          temperature2m == other.temperature2m &&
          relativeHumidity2m == other.relativeHumidity2m &&
          windSpeed10m == other.windSpeed10m &&
          surfacePressure == other.surfacePressure;

  @override
  int get hashCode =>
      time.hashCode ^
      weatherCode.hashCode ^
      temperature2m.hashCode ^
      relativeHumidity2m.hashCode ^
      windSpeed10m.hashCode ^
      surfacePressure.hashCode;
}

class DailyEntity {
  final List<DateTime>? time;
  final List<int>? weatherCode;
  final List<double>? temperature2MMax;
  final List<double>? temperature2MMin;

  const DailyEntity({
    this.time,
    this.weatherCode,
    this.temperature2MMax,
    this.temperature2MMin,
  });

  static DailyEntity get empty => const DailyEntity(
        time: [],
        weatherCode: [],
        temperature2MMax: [],
        temperature2MMin: [],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyEntity &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          weatherCode == other.weatherCode &&
          temperature2MMax == other.temperature2MMax &&
          temperature2MMin == other.temperature2MMin;

  @override
  int get hashCode =>
      time.hashCode ^
      weatherCode.hashCode ^
      temperature2MMax.hashCode ^
      temperature2MMin.hashCode;
}

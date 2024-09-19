import 'package:hnk_simple_weather_app/src/domain/entities/responses/daily_entity.dart';
import 'package:hnk_simple_weather_app/src/domain/entities/responses/hourly_entity.dart';

class WeatherEntity {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final num? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final num? elevation;
  final DailyEntity? daily;
  final HourlyEntity? hourly;

  const WeatherEntity({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.daily,
    this.hourly,
  });

  static WeatherEntity get empty => WeatherEntity(
        latitude: 0.0,
        longitude: 0.0,
        generationtimeMs: 0.0,
        utcOffsetSeconds: 0,
        timezone: '',
        timezoneAbbreviation: '',
        elevation: 0,
        daily: DailyEntity.empty,
        hourly: HourlyEntity.empty,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherEntity &&
          runtimeType == other.runtimeType &&
          latitude == other.latitude &&
          longitude == other.longitude &&
          generationtimeMs == other.generationtimeMs &&
          utcOffsetSeconds == other.utcOffsetSeconds &&
          timezone == other.timezone &&
          timezoneAbbreviation == other.timezoneAbbreviation &&
          elevation == other.elevation &&
          daily == other.daily &&
          hourly == other.hourly;

  @override
  int get hashCode =>
      latitude.hashCode ^
      longitude.hashCode ^
      generationtimeMs.hashCode ^
      utcOffsetSeconds.hashCode ^
      timezone.hashCode ^
      timezoneAbbreviation.hashCode ^
      elevation.hashCode ^
      daily.hashCode ^
      hourly.hashCode;

  WeatherEntity copyWith({
    double? latitude,
    double? longitude,
    double? generationtimeMs,
    num? utcOffsetSeconds,
    String? timezone,
    String? timezoneAbbreviation,
    num? elevation,
    DailyEntity? daily,
    HourlyEntity? hourly,
  }) {
    return WeatherEntity(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      generationtimeMs: generationtimeMs ?? this.generationtimeMs,
      utcOffsetSeconds: utcOffsetSeconds ?? this.utcOffsetSeconds,
      timezone: timezone ?? this.timezone,
      timezoneAbbreviation: timezoneAbbreviation ?? this.timezoneAbbreviation,
      elevation: elevation ?? this.elevation,
      daily: daily ?? this.daily,
      hourly: hourly ?? this.hourly,
    );
  }
}

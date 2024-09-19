// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyModelImpl _$$HourlyModelImplFromJson(Map<String, dynamic> json) =>
    _$HourlyModelImpl(
      time: (json['time'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      relativeHumidity2m: (json['relative_humidity_2m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      windSpeed10m: (json['wind_speed_10m'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      surfacePressure: (json['surface_pressure'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$HourlyModelImplToJson(_$HourlyModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time?.map((e) => e.toIso8601String()).toList(),
      'weather_code': instance.weatherCode,
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'wind_speed_10m': instance.windSpeed10m,
      'surface_pressure': instance.surfacePressure,
    };

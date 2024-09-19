// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_model.freezed.dart';
part 'hourly_model.g.dart';

@freezed
class HourlyModel with _$HourlyModel {
  const factory HourlyModel({
    List<DateTime>? time,
    @JsonKey(name: 'weather_code') List<int>? weatherCode,
    @JsonKey(name: 'temperature_2m') List<double>? temperature2m,
    @JsonKey(name: 'relative_humidity_2m') List<double>? relativeHumidity2m,
    @JsonKey(name: 'wind_speed_10m') List<double>? windSpeed10m,
    @JsonKey(name: 'surface_pressure') List<double>? surfacePressure,
  }) = _HourlyModel;

  factory HourlyModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyModelFromJson(json);
}

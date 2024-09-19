// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hnk_simple_weather_app/src/data/models/daily_model.dart';
import 'package:hnk_simple_weather_app/src/data/models/hourly_model.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    double? latitude,
    double? longitude,
    @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') num? utcOffsetSeconds,
    String? timezone,
    @JsonKey(name: 'timezone_abbreviation') String? timezoneAbbreviation,
    num? elevation,
    DailyModel? daily,
    HourlyModel? hourly,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

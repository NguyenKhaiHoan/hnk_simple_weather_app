// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_model.freezed.dart';
part 'daily_model.g.dart';

@freezed
class DailyModel with _$DailyModel {
  const factory DailyModel({
    List<DateTime>? time,
    @JsonKey(name: 'weather_code') List<int>? weatherCode,
    @JsonKey(name: 'temperature_2m_max') List<double>? temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') List<double>? temperature2MMin,
  }) = _DailyModel;

  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);
}

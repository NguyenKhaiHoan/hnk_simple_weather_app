// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hnk_simple_weather_app/src/data/models/location_model.dart';

part 'location_search_model.freezed.dart';
part 'location_search_model.g.dart';

@freezed
class LocationSearchModel with _$LocationSearchModel {
  const factory LocationSearchModel({
    List<LocationModel>? results,
    @JsonKey(name: 'generationtime_ms') double? generationtimeMs,
  }) = _LocationSearchModel;

  factory LocationSearchModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchModelFromJson(json);
}

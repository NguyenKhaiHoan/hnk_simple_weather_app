import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
    num? elevation,
    String? featureCode,
    String? countryCode,
    String? timezone,
    int? population,
    int? countryId,
    String? country,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

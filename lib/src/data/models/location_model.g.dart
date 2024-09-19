// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: json['elevation'] as num?,
      featureCode: json['featureCode'] as String?,
      countryCode: json['countryCode'] as String?,
      timezone: json['timezone'] as String?,
      population: (json['population'] as num?)?.toInt(),
      countryId: (json['countryId'] as num?)?.toInt(),
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'featureCode': instance.featureCode,
      'countryCode': instance.countryCode,
      'timezone': instance.timezone,
      'population': instance.population,
      'countryId': instance.countryId,
      'country': instance.country,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationSearchModelImpl _$$LocationSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationSearchModelImpl(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationtimeMs: (json['generationtime_ms'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationSearchModelImplToJson(
        _$LocationSearchModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'generationtime_ms': instance.generationtimeMs,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyModel _$HourlyModelFromJson(Map<String, dynamic> json) {
  return _HourlyModel.fromJson(json);
}

/// @nodoc
mixin _$HourlyModel {
  List<DateTime>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double>? get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  List<double>? get relativeHumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double>? get windSpeed10m => throw _privateConstructorUsedError;
  @JsonKey(name: 'surface_pressure')
  List<double>? get surfacePressure => throw _privateConstructorUsedError;

  /// Serializes this HourlyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyModelCopyWith<HourlyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyModelCopyWith<$Res> {
  factory $HourlyModelCopyWith(
          HourlyModel value, $Res Function(HourlyModel) then) =
      _$HourlyModelCopyWithImpl<$Res, HourlyModel>;
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m') List<double>? temperature2m,
      @JsonKey(name: 'relative_humidity_2m') List<double>? relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') List<double>? windSpeed10m,
      @JsonKey(name: 'surface_pressure') List<double>? surfacePressure});
}

/// @nodoc
class _$HourlyModelCopyWithImpl<$Res, $Val extends HourlyModel>
    implements $HourlyModelCopyWith<$Res> {
  _$HourlyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2m = freezed,
    Object? relativeHumidity2m = freezed,
    Object? windSpeed10m = freezed,
    Object? surfacePressure = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      weatherCode: freezed == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      temperature2m: freezed == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      relativeHumidity2m: freezed == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      windSpeed10m: freezed == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      surfacePressure: freezed == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyModelImplCopyWith<$Res>
    implements $HourlyModelCopyWith<$Res> {
  factory _$$HourlyModelImplCopyWith(
          _$HourlyModelImpl value, $Res Function(_$HourlyModelImpl) then) =
      __$$HourlyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m') List<double>? temperature2m,
      @JsonKey(name: 'relative_humidity_2m') List<double>? relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') List<double>? windSpeed10m,
      @JsonKey(name: 'surface_pressure') List<double>? surfacePressure});
}

/// @nodoc
class __$$HourlyModelImplCopyWithImpl<$Res>
    extends _$HourlyModelCopyWithImpl<$Res, _$HourlyModelImpl>
    implements _$$HourlyModelImplCopyWith<$Res> {
  __$$HourlyModelImplCopyWithImpl(
      _$HourlyModelImpl _value, $Res Function(_$HourlyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2m = freezed,
    Object? relativeHumidity2m = freezed,
    Object? windSpeed10m = freezed,
    Object? surfacePressure = freezed,
  }) {
    return _then(_$HourlyModelImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      weatherCode: freezed == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      temperature2m: freezed == temperature2m
          ? _value._temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      relativeHumidity2m: freezed == relativeHumidity2m
          ? _value._relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      windSpeed10m: freezed == windSpeed10m
          ? _value._windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      surfacePressure: freezed == surfacePressure
          ? _value._surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyModelImpl implements _HourlyModel {
  const _$HourlyModelImpl(
      {final List<DateTime>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m') final List<double>? temperature2m,
      @JsonKey(name: 'relative_humidity_2m')
      final List<double>? relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') final List<double>? windSpeed10m,
      @JsonKey(name: 'surface_pressure') final List<double>? surfacePressure})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2m = temperature2m,
        _relativeHumidity2m = relativeHumidity2m,
        _windSpeed10m = windSpeed10m,
        _surfacePressure = surfacePressure;

  factory _$HourlyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyModelImplFromJson(json);

  final List<DateTime>? _time;
  @override
  List<DateTime>? get time {
    final value = _time;
    if (value == null) return null;
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _weatherCode;
  @override
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode {
    final value = _weatherCode;
    if (value == null) return null;
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double>? get temperature2m {
    final value = _temperature2m;
    if (value == null) return null;
    if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _relativeHumidity2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<double>? get relativeHumidity2m {
    final value = _relativeHumidity2m;
    if (value == null) return null;
    if (_relativeHumidity2m is EqualUnmodifiableListView)
      return _relativeHumidity2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _windSpeed10m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double>? get windSpeed10m {
    final value = _windSpeed10m;
    if (value == null) return null;
    if (_windSpeed10m is EqualUnmodifiableListView) return _windSpeed10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _surfacePressure;
  @override
  @JsonKey(name: 'surface_pressure')
  List<double>? get surfacePressure {
    final value = _surfacePressure;
    if (value == null) return null;
    if (_surfacePressure is EqualUnmodifiableListView) return _surfacePressure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HourlyModel(time: $time, weatherCode: $weatherCode, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, windSpeed10m: $windSpeed10m, surfacePressure: $surfacePressure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyModelImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2m, _temperature2m) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity2m, _relativeHumidity2m) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10m, _windSpeed10m) &&
            const DeepCollectionEquality()
                .equals(other._surfacePressure, _surfacePressure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2m),
      const DeepCollectionEquality().hash(_relativeHumidity2m),
      const DeepCollectionEquality().hash(_windSpeed10m),
      const DeepCollectionEquality().hash(_surfacePressure));

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyModelImplCopyWith<_$HourlyModelImpl> get copyWith =>
      __$$HourlyModelImplCopyWithImpl<_$HourlyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyModelImplToJson(
      this,
    );
  }
}

abstract class _HourlyModel implements HourlyModel {
  const factory _HourlyModel(
      {final List<DateTime>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m') final List<double>? temperature2m,
      @JsonKey(name: 'relative_humidity_2m')
      final List<double>? relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') final List<double>? windSpeed10m,
      @JsonKey(name: 'surface_pressure')
      final List<double>? surfacePressure}) = _$HourlyModelImpl;

  factory _HourlyModel.fromJson(Map<String, dynamic> json) =
      _$HourlyModelImpl.fromJson;

  @override
  List<DateTime>? get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double>? get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<double>? get relativeHumidity2m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double>? get windSpeed10m;
  @override
  @JsonKey(name: 'surface_pressure')
  List<double>? get surfacePressure;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyModelImplCopyWith<_$HourlyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

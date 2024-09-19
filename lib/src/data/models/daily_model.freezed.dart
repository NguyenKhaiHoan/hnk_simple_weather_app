// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyModel _$DailyModelFromJson(Map<String, dynamic> json) {
  return _DailyModel.fromJson(json);
}

/// @nodoc
mixin _$DailyModel {
  List<DateTime>? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperature2MMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperature2MMin => throw _privateConstructorUsedError;

  /// Serializes this DailyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyModelCopyWith<DailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyModelCopyWith<$Res> {
  factory $DailyModelCopyWith(
          DailyModel value, $Res Function(DailyModel) then) =
      _$DailyModelCopyWithImpl<$Res, DailyModel>;
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double>? temperature2MMin});
}

/// @nodoc
class _$DailyModelCopyWithImpl<$Res, $Val extends DailyModel>
    implements $DailyModelCopyWith<$Res> {
  _$DailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
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
      temperature2MMax: freezed == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyModelImplCopyWith<$Res>
    implements $DailyModelCopyWith<$Res> {
  factory _$$DailyModelImplCopyWith(
          _$DailyModelImpl value, $Res Function(_$DailyModelImpl) then) =
      __$$DailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime>? time,
      @JsonKey(name: 'weather_code') List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') List<double>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double>? temperature2MMin});
}

/// @nodoc
class __$$DailyModelImplCopyWithImpl<$Res>
    extends _$DailyModelCopyWithImpl<$Res, _$DailyModelImpl>
    implements _$$DailyModelImplCopyWith<$Res> {
  __$$DailyModelImplCopyWithImpl(
      _$DailyModelImpl _value, $Res Function(_$DailyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? weatherCode = freezed,
    Object? temperature2MMax = freezed,
    Object? temperature2MMin = freezed,
  }) {
    return _then(_$DailyModelImpl(
      time: freezed == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      weatherCode: freezed == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      temperature2MMax: freezed == temperature2MMax
          ? _value._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      temperature2MMin: freezed == temperature2MMin
          ? _value._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyModelImpl implements _DailyModel {
  const _$DailyModelImpl(
      {final List<DateTime>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') final List<double>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      final List<double>? temperature2MMin})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin;

  factory _$DailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyModelImplFromJson(json);

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

  final List<double>? _temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperature2MMax {
    final value = _temperature2MMax;
    if (value == null) return null;
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _temperature2MMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperature2MMin {
    final value = _temperature2MMin;
    if (value == null) return null;
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyModel(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyModelImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin));

  /// Create a copy of DailyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyModelImplCopyWith<_$DailyModelImpl> get copyWith =>
      __$$DailyModelImplCopyWithImpl<_$DailyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyModelImplToJson(
      this,
    );
  }
}

abstract class _DailyModel implements DailyModel {
  const factory _DailyModel(
      {final List<DateTime>? time,
      @JsonKey(name: 'weather_code') final List<int>? weatherCode,
      @JsonKey(name: 'temperature_2m_max') final List<double>? temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      final List<double>? temperature2MMin}) = _$DailyModelImpl;

  factory _DailyModel.fromJson(Map<String, dynamic> json) =
      _$DailyModelImpl.fromJson;

  @override
  List<DateTime>? get time;
  @override
  @JsonKey(name: 'weather_code')
  List<int>? get weatherCode;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double>? get temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double>? get temperature2MMin;

  /// Create a copy of DailyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyModelImplCopyWith<_$DailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

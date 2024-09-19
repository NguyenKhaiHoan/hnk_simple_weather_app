// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationSearchModel _$LocationSearchModelFromJson(Map<String, dynamic> json) {
  return _LocationSearchModel.fromJson(json);
}

/// @nodoc
mixin _$LocationSearchModel {
  List<LocationModel>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationtime_ms')
  double? get generationtimeMs => throw _privateConstructorUsedError;

  /// Serializes this LocationSearchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSearchModelCopyWith<LocationSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchModelCopyWith<$Res> {
  factory $LocationSearchModelCopyWith(
          LocationSearchModel value, $Res Function(LocationSearchModel) then) =
      _$LocationSearchModelCopyWithImpl<$Res, LocationSearchModel>;
  @useResult
  $Res call(
      {List<LocationModel>? results,
      @JsonKey(name: 'generationtime_ms') double? generationtimeMs});
}

/// @nodoc
class _$LocationSearchModelCopyWithImpl<$Res, $Val extends LocationSearchModel>
    implements $LocationSearchModelCopyWith<$Res> {
  _$LocationSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? generationtimeMs = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationSearchModelImplCopyWith<$Res>
    implements $LocationSearchModelCopyWith<$Res> {
  factory _$$LocationSearchModelImplCopyWith(_$LocationSearchModelImpl value,
          $Res Function(_$LocationSearchModelImpl) then) =
      __$$LocationSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocationModel>? results,
      @JsonKey(name: 'generationtime_ms') double? generationtimeMs});
}

/// @nodoc
class __$$LocationSearchModelImplCopyWithImpl<$Res>
    extends _$LocationSearchModelCopyWithImpl<$Res, _$LocationSearchModelImpl>
    implements _$$LocationSearchModelImplCopyWith<$Res> {
  __$$LocationSearchModelImplCopyWithImpl(_$LocationSearchModelImpl _value,
      $Res Function(_$LocationSearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? generationtimeMs = freezed,
  }) {
    return _then(_$LocationSearchModelImpl(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      generationtimeMs: freezed == generationtimeMs
          ? _value.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationSearchModelImpl implements _LocationSearchModel {
  const _$LocationSearchModelImpl(
      {final List<LocationModel>? results,
      @JsonKey(name: 'generationtime_ms') this.generationtimeMs})
      : _results = results;

  factory _$LocationSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationSearchModelImplFromJson(json);

  final List<LocationModel>? _results;
  @override
  List<LocationModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'generationtime_ms')
  final double? generationtimeMs;

  @override
  String toString() {
    return 'LocationSearchModel(results: $results, generationtimeMs: $generationtimeMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), generationtimeMs);

  /// Create a copy of LocationSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchModelImplCopyWith<_$LocationSearchModelImpl> get copyWith =>
      __$$LocationSearchModelImplCopyWithImpl<_$LocationSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationSearchModelImplToJson(
      this,
    );
  }
}

abstract class _LocationSearchModel implements LocationSearchModel {
  const factory _LocationSearchModel(
          {final List<LocationModel>? results,
          @JsonKey(name: 'generationtime_ms') final double? generationtimeMs}) =
      _$LocationSearchModelImpl;

  factory _LocationSearchModel.fromJson(Map<String, dynamic> json) =
      _$LocationSearchModelImpl.fromJson;

  @override
  List<LocationModel>? get results;
  @override
  @JsonKey(name: 'generationtime_ms')
  double? get generationtimeMs;

  /// Create a copy of LocationSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSearchModelImplCopyWith<_$LocationSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  String get appId => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId, double lat, double long)
        getCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appId, double lat, double long)? getCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId, double lat, double long)? getCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentWeather value) getCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
  $Res call({String appId, double lat, double long});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;

  @override
  $Res call({
    Object? appId = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      appId: appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$GetCurrentWeatherCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$GetCurrentWeatherCopyWith(
          _$GetCurrentWeather value, $Res Function(_$GetCurrentWeather) then) =
      __$$GetCurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call({String appId, double lat, double long});
}

/// @nodoc
class __$$GetCurrentWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$GetCurrentWeatherCopyWith<$Res> {
  __$$GetCurrentWeatherCopyWithImpl(
      _$GetCurrentWeather _value, $Res Function(_$GetCurrentWeather) _then)
      : super(_value, (v) => _then(v as _$GetCurrentWeather));

  @override
  _$GetCurrentWeather get _value => super._value as _$GetCurrentWeather;

  @override
  $Res call({
    Object? appId = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_$GetCurrentWeather(
      appId == freezed
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GetCurrentWeather implements GetCurrentWeather {
  const _$GetCurrentWeather(this.appId, this.lat, this.long);

  @override
  final String appId;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'WeatherEvent.getCurrentWeather(appId: $appId, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentWeather &&
            const DeepCollectionEquality().equals(other.appId, appId) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appId),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  _$$GetCurrentWeatherCopyWith<_$GetCurrentWeather> get copyWith =>
      __$$GetCurrentWeatherCopyWithImpl<_$GetCurrentWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String appId, double lat, double long)
        getCurrentWeather,
  }) {
    return getCurrentWeather(appId, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String appId, double lat, double long)? getCurrentWeather,
  }) {
    return getCurrentWeather?.call(appId, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String appId, double lat, double long)? getCurrentWeather,
    required TResult orElse(),
  }) {
    if (getCurrentWeather != null) {
      return getCurrentWeather(appId, lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentWeather value) getCurrentWeather,
  }) {
    return getCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
  }) {
    return getCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentWeather value)? getCurrentWeather,
    required TResult orElse(),
  }) {
    if (getCurrentWeather != null) {
      return getCurrentWeather(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeather implements WeatherEvent {
  const factory GetCurrentWeather(
          final String appId, final double lat, final double long) =
      _$GetCurrentWeather;

  @override
  String get appId;
  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$GetCurrentWeatherCopyWith<_$GetCurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  Option<Either<ServerFailure, Map<String, dynamic>>>? get getCurrentWeather =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  WeatherStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ServerFailure, Map<String, dynamic>>>? getCurrentWeather,
      Map<String, dynamic>? data,
      WeatherStatus status,
      String? errorMessage});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? getCurrentWeather = freezed,
    Object? data = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      getCurrentWeather: getCurrentWeather == freezed
          ? _value.getCurrentWeather
          : getCurrentWeather // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ServerFailure, Map<String, dynamic>>>? getCurrentWeather,
      Map<String, dynamic>? data,
      WeatherStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, (v) => _then(v as _$_WeatherState));

  @override
  _$_WeatherState get _value => super._value as _$_WeatherState;

  @override
  $Res call({
    Object? getCurrentWeather = freezed,
    Object? data = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_WeatherState(
      getCurrentWeather: getCurrentWeather == freezed
          ? _value.getCurrentWeather
          : getCurrentWeather // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, Map<String, dynamic>>>?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.getCurrentWeather,
      final Map<String, dynamic>? data,
      this.status = WeatherStatus.initial,
      this.errorMessage})
      : _data = data;

  @override
  final Option<Either<ServerFailure, Map<String, dynamic>>>? getCurrentWeather;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final WeatherStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherState(getCurrentWeather: $getCurrentWeather, data: $data, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            const DeepCollectionEquality()
                .equals(other.getCurrentWeather, getCurrentWeather) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getCurrentWeather),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final Option<Either<ServerFailure, Map<String, dynamic>>>?
          getCurrentWeather,
      final Map<String, dynamic>? data,
      final WeatherStatus status,
      final String? errorMessage}) = _$_WeatherState;

  @override
  Option<Either<ServerFailure, Map<String, dynamic>>>? get getCurrentWeather;
  @override
  Map<String, dynamic>? get data;
  @override
  WeatherStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

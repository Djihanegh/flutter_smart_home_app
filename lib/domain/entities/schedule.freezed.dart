// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  String? get scheduleId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<Device>? get devices => throw _privateConstructorUsedError;
  List<String>? get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call(
      {String? scheduleId,
      DateTime startTime,
      String image,
      String name,
      DateTime endTime,
      bool isActive,
      List<Device>? devices,
      List<String>? days});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  final Schedule _value;
  // ignore: unused_field
  final $Res Function(Schedule) _then;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? startTime = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? endTime = freezed,
    Object? isActive = freezed,
    Object? devices = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? scheduleId,
      DateTime startTime,
      String image,
      String name,
      DateTime endTime,
      bool isActive,
      List<Device>? devices,
      List<String>? days});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res> extends _$ScheduleCopyWithImpl<$Res>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, (v) => _then(v as _$_Schedule));

  @override
  _$_Schedule get _value => super._value as _$_Schedule;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? startTime = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? endTime = freezed,
    Object? isActive = freezed,
    Object? devices = freezed,
    Object? days = freezed,
  }) {
    return _then(_$_Schedule(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      days: days == freezed
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedule implements _Schedule {
  const _$_Schedule(
      {this.scheduleId,
      required this.startTime,
      required this.image,
      required this.name,
      required this.endTime,
      required this.isActive,
      final List<Device>? devices,
      final List<String>? days})
      : _devices = devices,
        _days = days;

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  final String? scheduleId;
  @override
  final DateTime startTime;
  @override
  final String image;
  @override
  final String name;
  @override
  final DateTime endTime;
  @override
  final bool isActive;
  final List<Device>? _devices;
  @override
  List<Device>? get devices {
    final value = _devices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _days;
  @override
  List<String>? get days {
    final value = _days;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Schedule(scheduleId: $scheduleId, startTime: $startTime, image: $image, name: $name, endTime: $endTime, isActive: $isActive, devices: $devices, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {final String? scheduleId,
      required final DateTime startTime,
      required final String image,
      required final String name,
      required final DateTime endTime,
      required final bool isActive,
      final List<Device>? devices,
      final List<String>? days}) = _$_Schedule;

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  String? get scheduleId;
  @override
  DateTime get startTime;
  @override
  String get image;
  @override
  String get name;
  @override
  DateTime get endTime;
  @override
  bool get isActive;
  @override
  List<Device>? get devices;
  @override
  List<String>? get days;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

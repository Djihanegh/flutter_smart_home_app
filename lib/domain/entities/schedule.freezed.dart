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
  set scheduleId(String? value) => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  set startTime(DateTime value) => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  set image(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  set endTime(DateTime value) => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  set isActive(bool value) => throw _privateConstructorUsedError;
  List<Device>? get devices => throw _privateConstructorUsedError;
  set devices(List<Device>? value) => throw _privateConstructorUsedError;
  List<String>? get days => throw _privateConstructorUsedError;
  set days(List<String>? value) => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$_Schedule implements _Schedule {
  _$_Schedule(
      {this.scheduleId,
      required this.startTime,
      required this.image,
      required this.name,
      required this.endTime,
      required this.isActive,
      this.devices,
      this.days});

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  String? scheduleId;
  @override
  DateTime startTime;
  @override
  String image;
  @override
  String name;
  @override
  DateTime endTime;
  @override
  bool isActive;
  @override
  List<Device>? devices;
  @override
  List<String>? days;

  @override
  String toString() {
    return 'Schedule(scheduleId: $scheduleId, startTime: $startTime, image: $image, name: $name, endTime: $endTime, isActive: $isActive, devices: $devices, days: $days)';
  }

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
  factory _Schedule(
      {String? scheduleId,
      required DateTime startTime,
      required String image,
      required String name,
      required DateTime endTime,
      required bool isActive,
      List<Device>? devices,
      List<String>? days}) = _$_Schedule;

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  String? get scheduleId;
  set scheduleId(String? value);
  @override
  DateTime get startTime;
  set startTime(DateTime value);
  @override
  String get image;
  set image(String value);
  @override
  String get name;
  set name(String value);
  @override
  DateTime get endTime;
  set endTime(DateTime value);
  @override
  bool get isActive;
  set isActive(bool value);
  @override
  List<Device>? get devices;
  set devices(List<Device>? value);
  @override
  List<String>? get days;
  set days(List<String>? value);
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      scheduleId: json['scheduleId'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      image: json['image'] as String,
      name: json['name'] as String,
      endTime: DateTime.parse(json['endTime'] as String),
      isActive: json['isActive'] as bool,
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'startTime': instance.startTime.toIso8601String(),
      'image': instance.image,
      'name': instance.name,
      'endTime': instance.endTime.toIso8601String(),
      'isActive': instance.isActive,
      'devices': instance.devices,
      'days': instance.days,
    };

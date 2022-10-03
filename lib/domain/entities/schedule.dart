import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home_app/domain/entities/device.dart';

part 'schedule.freezed.dart';

part 'schedule.g.dart';

@unfreezed
class Schedule with _$Schedule {
  factory Schedule(
      {String? scheduleId,
      required DateTime startTime,
      required String image,
      required String name,
      required DateTime endTime,
      required bool isActive,
      List<Device>? devices,
      List<String>? days}) = _Schedule;

  static const fromJsonFactory = _$ScheduleFromJson;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

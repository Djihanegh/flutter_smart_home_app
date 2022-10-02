import 'package:smart_home_app/domain/entities/schedule.dart';
import 'package:smart_home_app/utils/app_assets.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
List<Schedule> schedulesList = [
  Schedule(
      startTime: DateTime(2022, 10, 03, 7),
      image: morning,
      name: "Morning",
      endTime: DateTime(2022, 10, 03, 11),
      isActive: true),
  Schedule(
      startTime: DateTime(2022, 10, 03, 11),
      image: afternoon,
      name: "Afternoon",
      endTime: DateTime(2022, 10, 03, 16),
      isActive: false),
  Schedule(
      startTime: DateTime(2022, 10, 03, 16),
      image: evening,
      name: "Evening",
      endTime: DateTime(2022, 10, 03, 19),
      isActive: false),
  Schedule(
      startTime: DateTime(2022, 10, 03, 19),
      image: night,
      name: "Night",
      endTime: DateTime(2022, 10, 03, 23),
      isActive: false),
];

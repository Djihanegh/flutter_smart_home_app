import 'package:smart_home_app/domain/entities/room.dart';
import 'package:smart_home_app/utils/app_assets.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
List<Room> roomsList = [
  Room(
      roomId: uuid.v4(),
      name: "Kitchen",
      image: filtration,
      subtitle: "Turning on",
      isActive: false),
  Room(
      roomId: uuid.v4(),
      name: "Bedroom",
      image: airConditioner,
      subtitle: "Turning on",
      isActive: true),
  Room(
      roomId: uuid.v4(),
      name: "Living room",
      image: camera,
      subtitle: "Turning on",
      isActive: true),
  Room(
      roomId: uuid.v4(),
      name: "Hall",
      image: lamp,
      subtitle: "Turning on",
      isActive: true),
];

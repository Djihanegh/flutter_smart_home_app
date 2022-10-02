import 'package:smart_home_app/domain/entities/room.dart';
import 'package:smart_home_app/utils/app_assets.dart';
import 'package:uuid/uuid.dart';

import '../domain/entities/device.dart';

const uuid = Uuid();
List<Room> roomsList = [
  Room(
      roomId: uuid.v4(),
      name: "Kitchen",
      image: kitchen,
      subtitle: "Turning on",
      isActive: false,
      devices: [
        Device(
            id: uuid.v4(),
            name: "Water purifer",
            image: filtration,
            subtitle: "Turning on",
            isActive: false),
        Device(
            id: uuid.v4(),
            name: "Air conditioner",
            image: airConditioner,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Lamp",
            image: lamp,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Rice cooker",
            image: riceCooker,
            subtitle: "Turning on",
            isActive: true),
      ]),
  Room(
      roomId: uuid.v4(),
      name: "Bedroom",
      image: bedroom,
      subtitle: "Turning on",
      isActive: true,
      devices: [
        Device(
            id: uuid.v4(),
            name: "Air conditioner",
            image: airConditioner,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Lamp",
            image: lamp,
            subtitle: "Turning on",
            isActive: true),
      ]),
  Room(
      roomId: uuid.v4(),
      name: "Bathroom",
      image: bathroom,
      subtitle: "Turning on",
      isActive: true,
      devices: [
        Device(
            id: uuid.v4(),
            name: "Washing machine",
            image: washingMachine,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Lamp",
            image: lamp,
            subtitle: "Turning on",
            isActive: true),
      ]),
  Room(
      roomId: uuid.v4(),
      name: "Living room",
      image: livingRoom,
      subtitle: "Turning on",
      isActive: true,
      devices: [
        Device(
            id: uuid.v4(),
            name: "Air conditioner",
            image: airConditioner,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Lamp",
            image: lamp,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Speaker",
            image: speaker,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Smart television",
            image: television,
            subtitle: "Turning on",
            isActive: true),
      ]),
  Room(
      roomId: uuid.v4(),
      name: "Hall",
      image: hall,
      subtitle: "Turning on",
      isActive: true,
      devices: [
        Device(
            id: uuid.v4(),
            name: "Air conditioner",
            image: airConditioner,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Lamp",
            image: lamp,
            subtitle: "Turning on",
            isActive: true),
        Device(
            id: uuid.v4(),
            name: "Smart television",
            image: television,
            subtitle: "Turning on",
            isActive: true),
      ]),
  const Room(name: "Add a new room", image: "", subtitle: "", isActive: false)
];

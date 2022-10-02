import 'package:smart_home_app/domain/entities/device.dart';
import 'package:smart_home_app/utils/app_assets.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
List<Device> devicesList = [
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
      name: "Camera",
      image: camera,
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
  Device(
      id: uuid.v4(),
      name: "Washing machine",
      image: washingMachine,
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
];

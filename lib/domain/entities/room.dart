import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room(
      {String? roomId,
      required String name,
      required String image,
      required String subtitle,
      required bool isActive,
      List<Room>? Rooms}) = _Room;

  static const fromJsonFactory = _$RoomFromJson;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

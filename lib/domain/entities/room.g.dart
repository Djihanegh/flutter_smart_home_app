// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      roomId: json['roomId'] as String?,
      name: json['name'] as String,
      image: json['image'] as String,
      subtitle: json['subtitle'] as String,
      isActive: json['isActive'] as bool,
      Rooms: (json['Rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
      'image': instance.image,
      'subtitle': instance.subtitle,
      'isActive': instance.isActive,
      'Rooms': instance.Rooms,
    };

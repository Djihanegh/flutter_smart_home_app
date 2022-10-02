// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Device _$$_DeviceFromJson(Map<String, dynamic> json) => _$_Device(
      id: json['id'] as String,
      roomId: json['roomId'] as String?,
      name: json['name'] as String,
      image: json['image'] as String,
      subtitle: json['subtitle'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'name': instance.name,
      'image': instance.image,
      'subtitle': instance.subtitle,
      'isActive': instance.isActive,
    };

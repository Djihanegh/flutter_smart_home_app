import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';

part 'device.g.dart';

@freezed
class Device with _$Device {
  const factory Device({
    required String id,
    String? roomId,
    required String name,
    required String image,
    required String subtitle,
    required bool isActive,
  }) = _Device;

  static const fromJsonFactory = _$DeviceFromJson;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

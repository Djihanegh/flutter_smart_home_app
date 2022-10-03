import 'package:flutter/material.dart';

import 'empty_device_details.dart';
import 'air_conditioner_details.dart';
import 'speaker_details.dart';

class DeviceDetailsWidget extends StatelessWidget {
  const DeviceDetailsWidget({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    Widget child = const EmptyWidget();
    switch (type) {
      case "Speaker":
        child = const SpeakerWidget();
        break;
      case "Air conditioner":
        child = const AirConditionerWidget();
        break;
    }

    return child;
  }
}

import 'package:flutter/material.dart';

import 'empty_device_details.dart';
import 'lamp_details.dart';

class DeviceDetailsWidget extends StatelessWidget {
  const DeviceDetailsWidget({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    Widget child = const EmptyWidget();
    switch (type) {
      case "Lamp":
        child = const LampDetailsWidget();
        break;
      case "Air conditioner":
        child = Container();
        break;
    }

    return child;
  }
}

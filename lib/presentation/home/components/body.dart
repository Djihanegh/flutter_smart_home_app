import 'package:flutter/material.dart';
import 'package:smart_home_app/presentation/home/components/custom_header.dart';

import '../../../utils/size_config.dart';
import 'temperature_humidity_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomHeader(),
        TemperatureHumidityWidget(temp: 23, humd: 43)
      ],
    ));
  }
}

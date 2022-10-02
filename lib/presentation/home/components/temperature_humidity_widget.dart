import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_style.dart';

import '../../../utils/app_texts.dart';

class TemperatureHumidityWidget extends StatelessWidget {
  const TemperatureHumidityWidget(
      {Key? key, required this.temp, required this.humd})
      : super(key: key);
  final double temp;
  final double humd;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      '$temperature $temp" | $humidity $humd%',
      style: TextStyles.nunitoSans400
          .copyWith(color: Colors.black.withOpacity(0.4), fontSize: 12),
    );
  }
}

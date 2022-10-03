import 'package:auto_size_text/auto_size_text.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';
import '../../../utils/size_config.dart';

double _thumbValue = 0;

class LampDetailsWidget extends StatefulWidget {
  const LampDetailsWidget({Key? key}) : super(key: key);

  @override
  State<LampDetailsWidget> createState() => _LampDetailsWidgetState();
}

class _LampDetailsWidgetState extends State<LampDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.screenHeight! * 0.3,
        decoration: BoxDecoration(
          color: const Color(0xFFE8EAEC),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: SfSliderTheme(
            data: SfSliderThemeData(
                thumbRadius: 18, thumbColor: Colors.transparent),
            child: SfSlider(
              interval: 1.0,
              min: 0.0,
              max: 100.0,
              inactiveColor: Colors.grey.withOpacity(0.5),
              activeColor: primaryColor,
              thumbIcon: Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 0),
                  child: Container(
                      constraints: const BoxConstraints(maxWidth: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor),
                      child: Center(
                        child: AutoSizeText(
                          "${_thumbValue.toStringAsFixed(1)}°",
                          style: TextStyles.karla.copyWith(color: Colors.black),
                          maxLines: 1,
                          maxFontSize: 12,
                          minFontSize: 5,
                        ),
                      ))),
              minorTicksPerInterval: 1,
              showTicks: false,
              value: _thumbValue,
              onChanged: (dynamic values) {
                setState(() {
                  _thumbValue = values as double;
                });
              },
            )));
  }
}

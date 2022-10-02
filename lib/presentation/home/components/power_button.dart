import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_assets.dart';
import 'package:smart_home_app/utils/constants.dart';

import '../../../utils/app_colors.dart';

class PowerButton extends StatelessWidget {
  const PowerButton({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: paddingAll(10),
        child: Container(
            height: 40,
            width: 40,
            padding: paddingAll(2),
            decoration: BoxDecoration(
                color: isActive ? primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1.5, color: Colors.white)),
            child: Center(
                child: Image.asset(
              powerBtn,
              height: 20,
              width: 20,
              color: isActive ? Colors.white : primaryColor,
            ))));
  }
}

import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_assets.dart';

import '../../../utils/app_colors.dart';

class PowerButton extends StatelessWidget {
  const PowerButton({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            color: isActive ? primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: Colors.white)),
        child: Image.asset(
          powerBtn,
          color: isActive ? Colors.white : primaryColor,
        ));
  }
}

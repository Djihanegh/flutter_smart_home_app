import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';

class TextStyles {
  static const brandleyHand = TextStyle(fontFamily: 'BRADHI', fontSize: 20);

  static const nunitoSans = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w700,
    fontSize: 50,
  );

  static const nunitoSans400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );

  static const karla = TextStyle(
    fontFamily: 'KARLA',
    fontWeight: FontWeight.w500,
  );
}

const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primaryColor, secondaryColor]);

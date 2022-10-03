import 'package:flutter/cupertino.dart';
import 'dart:math';

EdgeInsets paddingAll(double number) {
  return EdgeInsets.all(number);
}

const int numberOfHours = 12;
const int numberOfMinutes = 60;
const int numberOfSeconds = 60;
const double angleBetweenEachMinuteLine = (2 * pi) / numberOfMinutes;
const double angleBetweenEachHourLine = 5 * angleBetweenEachMinuteLine;

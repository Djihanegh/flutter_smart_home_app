import 'package:flutter/material.dart';

import '../presentation/home/home_screen.dart';
import '../presentation/schedule/schedule_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ScheduleScreen.routeName: (context) => const ScheduleScreen()
};

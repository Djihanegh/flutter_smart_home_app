import 'package:flutter/material.dart';

import 'components/body.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  static String routeName = '/schedule_screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}

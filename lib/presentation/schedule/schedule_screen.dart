import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_style.dart';

import 'components/body.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  static String routeName = '/schedule_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: AutoSizeText(
              "Schedules",
              style: TextStyles.nunitoSans
                  .copyWith(color: Colors.black, fontSize: 18),
            )),
        body: const Body());
  }
}

import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_style.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Center(
            child: Text(
      "Not yet implemented",
      style: TextStyles.nunitoSans,
    )));
  }
}

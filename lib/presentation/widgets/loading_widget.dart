import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';

import '../../utils/constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingAll(5),
      child: const Center(
          child: CircularProgressIndicator(
        color: primaryColor,
        strokeWidth: 3.0,
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: primaryColor,
      strokeWidth: 4.0,
    );
  }
}

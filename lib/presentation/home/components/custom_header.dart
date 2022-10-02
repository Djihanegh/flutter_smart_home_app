import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';
import '../../../utils/app_texts.dart';
import 'add_button.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AutoSizeText(
          welcomeText,
          style: TextStyles.nunitoSans
              .copyWith(color: Colors.black.withOpacity(0.8), fontSize: 25),
        ),
        const CustomAddButton()
      ],
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'power_button.dart';

class Deviceitem extends StatelessWidget {
  const Deviceitem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.isOn})
      : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.black.withOpacity(0.4))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image),
                const PowerButton(
                  isActive: true,
                ),
              ],
            ),
            AutoSizeText(title),
            AutoSizeText(subtitle)
          ],
        ));
  }
}

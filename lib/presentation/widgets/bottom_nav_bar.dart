import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {Key? key,
      required this.icon,
      required this.index,
      required this.onPressed,
      required this.navBarIndex,
      required this.title})
      : super(key: key);

  final IconData icon;
  final int index;
  final Function onPressed;
  final int navBarIndex;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPressed(),
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            //  height: 60,
            width: MediaQuery.of(context).size.width / 3.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20, width: 30, child: Icon(icon)),
                const SizedBox(
                  height: 4,
                ),
                AutoSizeText(title,
                    style: TextStyles.karla.copyWith(
                        fontSize: 12,
                        color: index == navBarIndex
                            ? Colors.white
                            : Colors.white.withOpacity(0.4)))
              ],
            )));
  }
}

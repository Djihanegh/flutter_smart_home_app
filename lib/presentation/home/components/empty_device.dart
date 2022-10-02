import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/presentation/home/components/custom_grid_view.dart';
import 'package:smart_home_app/utils/app_colors.dart';

class EmptyItem extends StatelessWidget {
  const EmptyItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = key == deviceKey ? "device" : "room";
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border:
                Border.all(width: 1.5, color: Colors.black.withOpacity(0.4))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText("Add a new $name"),
            const Icon(
              Icons.add,
              color: primaryColor,
            ),
          ],
        ));
  }
}

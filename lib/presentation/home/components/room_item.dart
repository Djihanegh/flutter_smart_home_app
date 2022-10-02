import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';
import 'package:smart_home_app/utils/app_style.dart';
import 'package:smart_home_app/utils/constants.dart';
import '../../../domain/entities/room.dart';
import 'power_button.dart';

class RoomItem extends StatelessWidget {
  const RoomItem({
    Key? key,
    required this.room,
  }) : super(key: key);
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(room.image), fit: BoxFit.cover),
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border:
                Border.all(width: 1.5, color: Colors.black.withOpacity(0.4))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(room.image, height: 50, width: 50),
                PowerButton(
                  isActive: room.isActive,
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.5),
                        gradient: linearGradient,
                        borderRadius: BorderRadius.circular(30)),
                    child: AutoSizeText(
                      room.name,
                      style: TextStyles.karla.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ))),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(30)),
                    child: AutoSizeText(
                      "${room.devices?.length ?? 0} devices",
                      style: TextStyles.karla.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )))
          ],
        ));
  }
}

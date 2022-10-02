import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:intl/intl.dart';
import 'package:smart_home_app/domain/entities/schedule.dart';
import 'package:smart_home_app/utils/app_colors.dart';
import 'package:smart_home_app/utils/app_style.dart';
import 'package:smart_home_app/utils/constants.dart';
import 'package:smart_home_app/utils/size_config.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({Key? key, required this.item, required this.onSwitch})
      : super(key: key);

  final Schedule item;
  final Function onSwitch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAll(15),
      margin: paddingAll(10),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight! * 0.25,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(item.image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              item.name,
              style: TextStyles.nunitoSans
                  .copyWith(color: Colors.white, fontSize: 30),
            ),
            FlutterSwitch(
              width: 60.0,
              height: 30.0,
              toggleSize: 25.0,
              borderRadius: 25.0,
              padding: 1.0,
              activeColor: primaryColor,
              inactiveColor: Colors.black,
              value: item.isActive,
              onToggle: (value) {
                onSwitch();
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.date_range, color: Colors.white),
              const SizedBox(width: 10),
              Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.5),
                      gradient: linearGradient,
                      borderRadius: BorderRadius.circular(30)),
                  child: AutoSizeText(
                    "${DateFormat('hh:mm a').format(item.startTime)} - ${DateFormat('hh:mm a').format(item.endTime)}",
                    style: TextStyles.karla
                        .copyWith(color: Colors.white, fontSize: 15),
                  ))
            ]),
        const SizedBox(
          height: 15,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.calendar_month, color: Colors.white),
                  const SizedBox(width: 10),
                  Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.5),
                          gradient: linearGradient,
                          borderRadius: BorderRadius.circular(30)),
                      child: AutoSizeText(
                        "${DateFormat('hh:mm a').format(item.startTime)} - ${DateFormat('hh:mm a').format(item.endTime)}",
                        style: TextStyles.karla
                            .copyWith(color: Colors.white, fontSize: 15),
                      )),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.5),
                      gradient: linearGradient,
                      borderRadius: BorderRadius.circular(30)),
                  child: AutoSizeText(
                    "${item.devices?.length ?? 0} devices",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.karla
                        .copyWith(color: Colors.white, fontSize: 13),
                  ))
            ])
      ]),
    );
  }
}

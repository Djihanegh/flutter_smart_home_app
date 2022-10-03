import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_style.dart';
import '../../../domain/entities/device.dart';
import 'device_details_widget.dart';
import 'power_button.dart';

class DeviceItem extends StatefulWidget {
  const DeviceItem({
    Key? key,
    required this.device,
  }) : super(key: key);
  final Device device;

  @override
  State<DeviceItem> createState() => _DeviceItemState();
}

class _DeviceItemState extends State<DeviceItem> {
  @override
  Widget build(BuildContext context) {
    Device device = widget.device;
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              elevation: 10,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              builder: (BuildContext context) {
                return DeviceDetailsWidget(
                  type: device.name,
                );
              });
        },
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1.5, color: Colors.black.withOpacity(0.4))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(device.image, height: 50, width: 50),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            device.isActive = !device.isActive;
                          });
                        },
                        child: PowerButton(
                          isActive: device.isActive,
                        )),
                  ],
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                    child: AutoSizeText(
                      device.name,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyles.karla.copyWith(color: Colors.black),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: AutoSizeText(
                      device.subtitle,
                      style: TextStyles.karla.copyWith(color: Colors.black),
                    ))
              ],
            )));
  }
}

/*Container(
                            height: 15,
                            decoration: BoxDecoration(
                                color: Color(0xFFE8EAEC),
                                borderRadius: BorderRadius.circular(5)),
                            child: SfSliderTheme(
                                data: SfSliderThemeData(
                                    thumbRadius: 18,
                                    thumbColor: Colors.transparent
                                    // thumbStrokeWidth: 50
                                    //  tooltipBackgroundColor: model.backgroundColor,
                                    ),
                                child: SfSlider(
                                  interval: 1.0,
                                  min: 0.0,
                                  max: 100.0,
                                  inactiveColor: Color(0xFFE8EAEC),
                                  activeColor: KPrimaryColor,
                                  thumbIcon: Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, bottom: 0),
                                      child: Container(
                                          //  width: 1000,
                                          constraints:
                                              BoxConstraints(maxWidth: 50),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: KPrimaryColor),
                                          child: Center(
                                            child: AutoSizeText(
                                              "${donationValue.toStringAsFixed(2)} DA",
                                              style: TextStyles.semiBold
                                                  .copyWith(
                                                      color: Colors.white),
                                              maxLines: 1,
                                              maxFontSize: 10,
                                              minFontSize: 5,
                                            ),
                                          ))),
                                  minorTicksPerInterval: 1,
                                  showTicks: false,
                                  value: _thumbValue,
                                  onChanged: (dynamic values) {
                                    setState(() {
                                      try {
                                        _thumbValue = values as double;
                                      } catch (e) {}

                                      //  donationValue = values as ;
                                    });
                                  },
                                )))*/
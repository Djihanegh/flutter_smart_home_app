import 'dart:developer';
import 'dart:typed_data';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:smart_home_app/utils/app_colors.dart';
import 'dart:ui' as ui;

import '../../../utils/app_assets.dart';
import '../../../utils/app_style.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../widgets/circular_slider/double_circular_slider.dart';

class SpeakerWidget extends StatefulWidget {
  const SpeakerWidget({Key? key}) : super(key: key);

  @override
  State<SpeakerWidget> createState() => _SpeakerWidgetState();
}

class _SpeakerWidgetState extends State<SpeakerWidget> {
  ImageInfo? myImageInfo;
  int volume = 0;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _getImageInfo();
    });

    super.initState();
  }

  void _getImageInfo() async {
    getImageInfo(context);
  }

  ui.Image? icon;

  void getImageInfo(BuildContext context) async {
    ByteData bd = await rootBundle.load(tumbIcon);

    final Uint8List bytes = Uint8List.view(bd.buffer);

    final ui.Codec codec = await ui.instantiateImageCodec(bytes);

    final ui.Image? image = (await codec.getNextFrame()).image;

    setState(() => icon = image);
  }

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? SizedBox(
            height: SizeConfig.screenHeight! * 0.8,
            child: Padding(
                padding: paddingAll(50),
                child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.21),
                          blurRadius: 17,
                          spreadRadius: 0,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: DoubleCircularSlider(
                      100,
                      0,
                      5,
                      height: 200.0,
                      width: 200.0,
                      thumbIcon: icon!,
                      baseColor: const Color(0xFFF1F1F1),
                      selectionColor: primaryColor,
                      handlerColor: Colors.black,
                      handlerOutterRadius: 12.0,
                      onSelectionChange: (int a, int b, int c) =>
                          onChanged(a, b),
                      sliderStrokeWidth: 12.0,
                      child: Padding(
                        padding: const EdgeInsets.all(42.0),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText("Volume",
                                style: TextStyles.nunitoSans
                                    .copyWith(fontSize: 15)),
                            AutoSizeText("${volume}")
                          ],
                        )),
                      ),
                    ))))
        : Container();
  }

  void onChanged(int a, int b) {
    setState(() {
      volume = b;
    });
  }
}

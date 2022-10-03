import 'dart:developer' as devtools;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/app_colors.dart';

import 'single_circular_slider.dart';
import 'utils.dart';
import 'dart:ui' as ui;

class SliderPainter extends CustomPainter {
  CircularSliderMode mode;
  double startAngle;
  double endAngle;
  double sweepAngle;
  Color selectionColor;
  Color handlerColor;
  double handlerOutterRadius;
  bool showRoundedCapInSelection;
  bool showHandlerOutter;
  double sliderStrokeWidth;
  final ui.Image thumbIcon;

  Offset? initHandler;
  Offset? endHandler;
  Offset? center;
  double? radius;
  double currentAngle;

  SliderPainter(
      {required this.mode,
      required this.thumbIcon,
      required this.startAngle,
      required this.endAngle,
      required this.sweepAngle,
      required this.selectionColor,
      required this.handlerColor,
      required this.handlerOutterRadius,
      required this.showRoundedCapInSelection,
      required this.showHandlerOutter,
      required this.sliderStrokeWidth,
      required this.currentAngle});

  @override
  void paint(Canvas canvas, Size size) {
    ////

    center = Offset(size.width / 2, size.height / 2);
    radius = min(size.width / 2, size.height / 2) - sliderStrokeWidth;

    Paint progress = _getPaint(color: selectionColor, width: 30);

    canvas.drawArc(
        Rect.fromCircle(center: center!, radius: radius!),
        -pi / 2 + currentAngle,
        sweepAngle,
        false,
        progress); // STARTTTTTTTTTTTT

    Paint handler = _getPaint(color: primaryColor, style: PaintingStyle.fill);
    Paint handlerOutter = _getPaint(color: primaryColor, width: 6.0);

    if (mode == CircularSliderMode.doubleHandler) {
      initHandler = radiansToCoordinates(
          center!, -pi / 2 + currentAngle, radius!); // STARTTTTTTTT

      canvas.drawCircle(initHandler!, 9.0, handler);
      canvas.drawCircle(initHandler!, handlerOutterRadius, handlerOutter);

      endHandler = radiansToCoordinates(center!, -pi / 2 + endAngle, radius!);
      //
      canvas.drawCircle(endHandler!, handlerOutterRadius, handlerOutter);

      canvas.drawCircle(endHandler!, 9.0, handler);

      var dotPaint = Paint()..color = Colors.white;

      canvas.drawImage(
          thumbIcon,
          Offset(initHandler!.dx - 10, initHandler!.dy - 10),
          Paint()
            ..color = Colors.white
            ..strokeWidth = 1.0
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.fill);

      if (showHandlerOutter) {}
    }

    void _drawShadow(Canvas canvas) {
      final Path path = Path();
      path.addOval(Rect.fromCircle(
          center: radiansToCoordinates(
              center!, -pi / 2.02 + startAngle, radius! + 1.5),
          radius: 13.5));

      canvas.drawShadow(
          path, const Color(0xffFFFFFF).withOpacity(0.1), 3, true);

      path.addOval(Rect.fromCircle(
          center: radiansToCoordinates(center!, -pi / 1.96 + endAngle, radius!),
          radius: 13.5));

      canvas.drawShadow(
          path, const Color(0xffFFFFFF).withOpacity(0.5), 3, true);
    }
  }

  Paint _getPaint(
          {required Color color, double? width, PaintingStyle? style}) =>
      Paint()
        ..color = color
        ..strokeCap =
            showRoundedCapInSelection ? StrokeCap.round : StrokeCap.butt
        ..style = style ?? PaintingStyle.stroke
        ..strokeWidth = width ?? sliderStrokeWidth;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

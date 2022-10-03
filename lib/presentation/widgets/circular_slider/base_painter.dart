import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BasePainter extends CustomPainter {
  Color baseColor;
  Color selectionColor;
  double sliderStrokeWidth;

  Offset? center;
  double? radius;

  Offset? sectorCenter;
  double? sectorRadius;

  BasePainter({
    required this.baseColor,
    required this.selectionColor,
    required this.sliderStrokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    center = Offset(size.width / 2, size.height / 2);
    radius = min(size.width / 2, size.height / 2) - sliderStrokeWidth;

    Paint base = Paint()
      ..color = baseColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 30;
    sectorCenter = Offset(size.width / 2, size.height / 2);
    sectorRadius = min(size.width / 2.6, size.height / 2.6);

    assert(radius! > 0);

    Path oval = Path()
      ..addOval(Rect.fromCircle(center: center!, radius: radius! - 0));
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 50);
    canvas.drawPath(oval, shadowPaint);
    _drawBaseCircle(canvas);

    canvas.drawCircle(center!, radius!, base);
  }

  void _drawBaseCircle(Canvas canvas) {
    final Paint _paint = Paint()
      ..shader = ui.Gradient.radial(
        Offset(center!.dx, center!.dy),
        radius! + 800,
        [Colors.white, Colors.white],
      )
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center!, radius!, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

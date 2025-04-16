import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final DateTime currentTime;
  ClockPainter(this.currentTime);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Draw clock face
    Paint clockFacePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius - 4, clockFacePaint);

    // Draw clock border
    Paint borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    canvas.drawCircle(center, radius - 4, borderPaint);

    // Draw shadowed area (gray region)
    Paint shadowPaint = Paint()
      ..color = Colors.grey[500]!
      ..style = PaintingStyle.fill;
    Path shadowPath = Path()
      ..moveTo(center.dx, center.dy)
      ..arcTo(Rect.fromCircle(center: center, radius: radius - 4),
          pi / 2, pi / 3, false)
      ..lineTo(center.dx, center.dy);
    canvas.drawPath(shadowPath, shadowPaint);

    // Draw clock hands
    drawHand(canvas, center, radius * 0.5, currentTime.hour * 30, Colors.black, 8);
    drawHand(canvas, center, radius * 0.7, currentTime.minute * 6, Colors.black, 6);
    drawHand(canvas, center, radius * 0.8, currentTime.second * 6, Colors.red, 3);
  }

  void drawHand(Canvas canvas, Offset center, double length, double angle, Color color, double width) {
    Paint handPaint = Paint()
      ..color = color
      ..strokeWidth = width
      ..strokeCap = StrokeCap.round;

    double radian = (angle - 90) * pi / 180;
    double x = center.dx + length * cos(radian);
    double y = center.dy + length * sin(radian);

    canvas.drawLine(center, Offset(x, y), handPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

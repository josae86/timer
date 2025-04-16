import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/clock_provider.dart';
import '../painters/clock_painter.dart';

class AnalogClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final clockProvider = Provider.of<ClockProvider>(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: clockProvider.currentColor, // Change background color
        border: Border.all(color: Colors.black, width: 4),
      ),
      child: CustomPaint(
        painter: ClockPainter(clockProvider.currentTime),
        size: Size(300, 300),
      ),
    );
  }
}

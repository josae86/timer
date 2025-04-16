import 'package:flutter/material.dart';
import '../constants/color_schedule.dart';

class TimeColorLogic {
  static Color getColorForTime(DateTime now) {
    String day = now.weekday.toString(); // Get day as string (1=Monday, ..., 7=Sunday)
    List<Map<String, dynamic>> schedule = colorSchedule[day] ?? [];

    for (var entry in schedule) {
      TimeOfDay start = entry['start'];
      TimeOfDay end = entry['end'];
      Color color = entry['color'];

      if (_isTimeInRange(now, start, end)) {
        return color;
      }
    }

    return Colors.transparent; // Default no color
  }

  static bool _isTimeInRange(DateTime now, TimeOfDay start, TimeOfDay end) {
    int nowMinutes = now.hour * 60 + now.minute;
    int startMinutes = start.hour * 60 + start.minute;
    int endMinutes = end.hour * 60 + end.minute;

    return nowMinutes >= startMinutes && nowMinutes < endMinutes;
  }
}

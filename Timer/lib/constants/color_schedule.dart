import 'package:flutter/material.dart';

Map<String, List<Map<String, dynamic>>> colorSchedule = {
  "7": [ // Sunday
    {"start": TimeOfDay(hour: 15, minute: 0), "end":
    TimeOfDay(hour: 16, minute: 30), "color": Colors.lightGreen},
    {"start": TimeOfDay(hour: 16, minute: 30), "end":
    TimeOfDay(hour: 18, minute: 0), "color": Colors.red},
  ],
  "1": [ // Monday
    {"start": TimeOfDay(hour: 7, minute: 0), "end":
    TimeOfDay(hour: 9, minute: 0), "color": Colors.red[900]},
    {"start": TimeOfDay(hour: 13, minute: 0), "end":
    TimeOfDay(hour: 15, minute: 0), "color": Colors.lightGreen},
  ],
  "2": [ // Tuesday
    {"start": TimeOfDay(hour: 12, minute: 0), "end":
    TimeOfDay(hour: 13, minute: 30), "color": Colors.lightGreen},
    {"start": TimeOfDay(hour: 15, minute: 0), "end":
    TimeOfDay(hour: 16, minute: 30), "color": Colors.red},
  ],
  "3": [ // Wednesday
    {"start": TimeOfDay(hour: 10, minute: 30), "end":
    TimeOfDay(hour: 12, minute: 0), "color": Colors.green[900]},
    {"start": TimeOfDay(hour: 12, minute: 0), "end":
    TimeOfDay(hour: 13, minute: 30), "color": Colors.red},
  ],
  "4": [ // Thursday
    {"start": TimeOfDay(hour: 9, minute: 0), "end":
    TimeOfDay(hour: 10, minute: 30), "color": Colors.green[900]},
    {"start": TimeOfDay(hour: 13, minute: 30), "end":
    TimeOfDay(hour: 15, minute: 0), "color": Colors.red},
  ],
  "5": [ // Friday
    {"start": TimeOfDay(hour: 7, minute: 0), "end":
    TimeOfDay(hour: 9, minute: 0), "color": Colors.green[900]},
    {"start": TimeOfDay(hour: 10, minute: 30), "end":
    TimeOfDay(hour: 12, minute: 0), "color": Colors.red},
  ],
  "6": [ // Saturday
    {"start": TimeOfDay(hour: 6, minute: 0), "end":
    TimeOfDay(hour: 7, minute: 30), "color": Colors.green[900]},
    {"start": TimeOfDay(hour: 21, minute: 30), "end":
    TimeOfDay(hour: 22, minute: 30), "color": Colors.red},
  ],
};

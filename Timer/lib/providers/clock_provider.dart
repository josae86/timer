import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/time_color_logic.dart';

class ClockProvider extends ChangeNotifier {
  DateTime _currentTime = DateTime.now();
  Color _currentColor = Colors.transparent;

  ClockProvider() {
    _updateTime();
  }

  DateTime get currentTime => _currentTime;
  Color get currentColor => _currentColor;

  void _updateTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _currentTime = DateTime.now();
      _currentColor = TimeColorLogic.getColorForTime(_currentTime);
      print("Time: $_currentTime, Color: $_currentColor");
      notifyListeners();
    });
  }
}

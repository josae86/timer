import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'providers/clock_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ClockProvider(),
      child: AnalogClockApp(),
    ),
  );
}

class AnalogClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

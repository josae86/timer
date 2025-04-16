import 'package:flutter/material.dart';
import '../widgets/analog.dart';
import '../utils/time_color_logic.dart'; // Import the file containing the function

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _updateBackgroundColor();
  }

  void _updateBackgroundColor() {
    setState(() {
      _backgroundColor = TimeColorLogic.getColorForTime(DateTime.now()); // Correct function call
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: AnalogClock(),
      ),
    );
  }
}

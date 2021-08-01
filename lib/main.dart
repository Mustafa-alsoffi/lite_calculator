import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lite Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Center(child: CalcButton(text: '1')),
      ),
    );
  }
}

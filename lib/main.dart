import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  // This widget is the root of your application.
  final int btnUIColorGray = 0xFF6C807F;
  final int btnUIColorWhite = 0xFFFFFFFF;
  final int greenTextColor = 0xFF65BDAC;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lite Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: btnUIColorGray,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: btnUIColorGray,
                ),
                CalcButton(
                  text: '%',
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
                CalcButton(
                  text: '/',
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

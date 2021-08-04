import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget {
  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  final int btnUIColorGray = 0xFF6C807F;

  final int btnUIColorWhite = 0xFFFFFFFF;

  final int greenTextColor = 0xFF65BDAC;

  final int grayTextColor = 0xFF545F61;

  String _history = '';

  String _expression = '';

  void clickNum(String text) {
    setState(() {
      _expression += text;
    });
  }

  void clearAll(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    setState(() {
      _history = _expression;
      _expression = 'Solved!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lite Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _history,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                    ),
                    color: Color(greenTextColor)),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                _expression,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 48,
                  ),
                  color: Colors.white,
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  callback: clearAll,
                  fillColor: btnUIColorGray,
                ),
                CalcButton(
                  text: 'C',
                  callback: clear,
                  fillColor: btnUIColorGray,
                ),
                CalcButton(
                  text: '%',
                  callback: clickNum,
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
                CalcButton(
                  text: '/',
                  callback: clickNum,
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '7',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '8',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '9',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '*',
                  callback: clickNum,
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '4',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '5',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '6',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '-',
                  callback: clickNum,
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '1',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '2',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '3',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '+',
                  callback: clickNum,
                  fillColor: btnUIColorWhite,
                  textColor: greenTextColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '.',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '0',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '00',
                  callback: clickNum,
                ),
                CalcButton(
                  text: '=',
                  callback: evaluate,
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

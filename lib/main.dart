import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  // This widget is the root of your application.
  final int btnUIColorGray = 0xFF6C807F;
  final int btnUIColorWhite = 0xFFFFFFFF;
  final int greenTextColor = 0xFF65BDAC;
  final int grayTextColor = 0xFF545F61;
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
                '123*123',
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
                '123',
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
                  text: '7',
                ),
                CalcButton(
                  text: '8',
                ),
                CalcButton(
                  text: '9',
                ),
                CalcButton(
                  text: '*',
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
                ),
                CalcButton(
                  text: '5',
                ),
                CalcButton(
                  text: '6',
                ),
                CalcButton(
                  text: '-',
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
                ),
                CalcButton(
                  text: '2',
                ),
                CalcButton(
                  text: '3',
                ),
                CalcButton(
                  text: '+',
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
                ),
                CalcButton(
                  text: '0',
                ),
                CalcButton(
                  text: '00',
                ),
                CalcButton(
                  text: '=',
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

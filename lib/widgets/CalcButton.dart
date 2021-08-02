import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int? fillColor;
  final int textColor;
  final double textSize;
  const CalcButton({
    Key? key,
    this.fillColor,
    required this.text,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 24.00,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          child: Text(text,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 24), fontSize: textSize)),
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: fillColor != null ? Color(fillColor!) : null,
              primary: Color(textColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
        ),
      ),
    );
  }
}

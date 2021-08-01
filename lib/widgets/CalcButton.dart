import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  const CalcButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
          child: TextButton(child: Text(text), onPressed: () {},
       style: TextButton.styleFrom(
       backgroundColor: Colors.blue,
       primary: Colors.white,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),),
    );

  }
}
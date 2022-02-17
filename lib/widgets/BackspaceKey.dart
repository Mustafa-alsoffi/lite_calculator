import 'package:flutter/material.dart';

class BackspaceKey extends StatelessWidget {
  final VoidCallback onBackspace;
  final int flex;

  const BackspaceKey({
    Key? key,
    required this.onBackspace,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onBackspace.call();
          },
          child: Container(
            child: Center(
              child: Icon(Icons.backspace, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

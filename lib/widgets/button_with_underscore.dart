import 'package:cyberpunk/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonWithUnderscore extends StatelessWidget {
  final double height;
  final VoidCallback onTap;
  final Color color;
  final String text;
  
  ButtonWithUnderscore({
    this.text: "",
    this.height: 50,
    this.onTap,
    this.color: ThemeColor.lightBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: height,
            decoration: BoxDecoration(border: Border.all(color: color)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: color, fontSize: 20),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 5,
            width: 130,
            color: color,
          ),
        )
      ],
    );
  }
}

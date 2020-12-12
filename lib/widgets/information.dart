import 'package:cyberpunk/styles/colors.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final Color textColor;
  final String text;
  Information({this.text: "", this.textColor: ThemeColor.lightBlue});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            "assets/network.png",
            height: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

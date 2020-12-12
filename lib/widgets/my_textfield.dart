import 'package:cyberpunk/styles/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends TextField {
  final Color color;
  final String hintText;
  final TextEditingController controller;
  final bool showIcon;
  final IconData icon;

  MyTextField({
    this.controller,
    this.color: ThemeColor.darkYellow,
    this.hintText: "",
    this.showIcon: true,
    this.icon
  }) : super(
          controller: controller,
          cursorColor: color,
          style: TextStyle(color: color, fontSize: 20),
          decoration: InputDecoration(
            icon: Icon(
              showIcon ? icon : null,
              color: color,
            ),
            fillColor: color,
            hintText: hintText,
            hintStyle: TextStyle(color: color, fontSize: 20),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
          ),
        );
}

import 'package:cyberpunk/styles/colors.dart';
import 'package:flutter/material.dart';

class BeveledButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color borderColor, bgColor;
  final IconData icon;
  final double width, height, iconSize;
  final BorderRadiusGeometry borderRadius;

  BeveledButton({
    this.onTap,
    this.borderColor: ThemeColor.lightBlue,
    this.bgColor: ThemeColor.darkBlue,
    this.icon,
    this.width: 45,
    this.height: 45,
    this.iconSize: 20,
    this.borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        shape: BeveledRectangleBorder(
          borderRadius: borderRadius,
          side: BorderSide(color: borderColor, width: .5),
        ),
        child: Container(
          width: width,
          height: height,
          color: bgColor,
          child: Center(
            child: Icon(
              icon,
              color: borderColor,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}

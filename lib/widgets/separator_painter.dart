import 'package:flutter/material.dart';

class SeparatorPainter extends CustomPainter {
  final Color color;
  SeparatorPainter({@required this.color}) : assert(color != null);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    Path path = Path();
    double x = size.width * .3;
    double middleY = size.height - 10;

    path.moveTo(0, size.height);

    path.lineTo(0, middleY);
    path.lineTo(x, middleY);
    x += 12;
    path.lineTo(x, size.height);
    x += 20;
    path.lineTo(x, middleY - 10);
    x += 20;
    path.lineTo(x, middleY - 10);
    x += 10;
    path.lineTo(x, middleY);
    path.lineTo(size.width, middleY);
    path.lineTo(size.width, size.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

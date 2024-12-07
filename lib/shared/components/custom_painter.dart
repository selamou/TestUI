import 'package:flutter/cupertino.dart';

class ButtonNotch extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint_1 = Paint()
      ..color = Color(0xff648286)
      ..style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(7.5, 0, 12, 5);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width - 12, 5);
    path.quadraticBezierTo(size.width - 7.5, 0, size.width, 0);
    path.close();
    canvas.drawPath(path, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

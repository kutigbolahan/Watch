import 'dart:math';

import 'package:flutter/material.dart';

class Watchview extends StatefulWidget {
  @override
  _WatchviewState createState() => _WatchviewState();
}

class _WatchviewState extends State<Watchview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: CustomPaint(
        painter: WatchPainter(),
      ),
    );
  }
}

class WatchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centery = size.height / 2;
    var center = Offset(centerX, centery);
    var radius = min(centerX, centery);
    var fillBrush = Paint()..color = Color(0xFF444974);
    var centerFillBrush = Paint()..color = Color(0xFFEAECFF);
    var outlineBrush = Paint()
      ..color = Color(0xFFEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;
    var secondHandBrush = Paint()
      ..color = Colors.orange[300]
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    var minHandBrush = Paint()
      ..shader = RadialGradient(colors: [Colors.lightBlue, Colors.pink])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;
    var hourHandBrush = Paint()
      ..color = Colors.orange[300]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;
    canvas.drawCircle(center, radius - 40, fillBrush);
    canvas.drawCircle(center, radius - 40, outlineBrush);
    canvas.drawCircle(center, 16, centerFillBrush);
    canvas.drawLine(center, Offset(100, 100), secondHandBrush);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

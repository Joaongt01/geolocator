import 'dart:math';

import 'package:flutter/material.dart';

class Compass extends StatelessWidget {
  final double heading;

  const Compass({super.key, required this.heading});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 280,
      child: CustomPaint(painter: CompassPainter(heading: heading)),
    ); //SizedBox
  }
}

class CompassPainter extends CustomPainter {
  final double heading;

CompassPainter({required this.heading});

@override
void paint(Canvas canvas, Size size) {
  final center = Offset(size.width / 2, size.height / 2);

  final radius = min(size.width, size.height) / 2;

  final circlePaint = Paint()
    .. style = PaintingStyle.stroke
    .. color = Colors.blueAccent
    .. strokeWidth = 3;

canvas.drawCircle(center, radius - 3, circlePaint);

canvas. save();

canvas.translate(center.dx, center.dy);
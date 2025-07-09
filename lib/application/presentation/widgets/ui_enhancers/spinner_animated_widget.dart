import 'dart:math' as math;

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SpinnerUIEnhanceWidget extends StatelessWidget {
  const SpinnerUIEnhanceWidget(
      {super.key,
      required this.height,
      required this.width,
      this.decoration,
      this.duration = const Duration(seconds: 7)});
  final double height;
  final double width;
  final Duration duration;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Spin(
      infinite: true,
      duration: duration,
      child: Container(
        width: width,
        height: height,
        decoration: decoration ??
            const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 65, 17, 73),
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ]),
        child: CustomPaint(
          painter: _RadialLinesPainter(),
        ),
      ),
    );
  }
}

class _RadialLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF2D1B69)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 10;

    for (int i = 0; i < 24; i++) {
      final angle = (i * 15) * (3.14159 / 180);
      final startRadius = radius * 0.6;
      final endRadius = radius * 0.9;

      final start = Offset(
        center.dx + startRadius * math.cos(angle),
        center.dy + startRadius * math.sin(angle),
      );

      final end = Offset(
        center.dx + endRadius * math.cos(angle),
        center.dy + endRadius * math.sin(angle),
      );

      canvas.drawLine(start, end, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

import 'dart:math';
import 'package:flutter/material.dart';

class SpinningCarnivalWheel extends StatefulWidget {
  final List<IconData> icons;
  final double iconSize;
  final Color iconColor;
  final double radius;
  final Duration duration;

  const SpinningCarnivalWheel({
    super.key,
    required this.icons,
    this.iconSize = 30,
    this.iconColor = Colors.black,
    this.radius = 100,
    this.duration = const Duration(seconds: 15),
  });

  @override
  State<SpinningCarnivalWheel> createState() => _SpinningCarnivalWheelState();
}

class _SpinningCarnivalWheelState extends State<SpinningCarnivalWheel>
    with TickerProviderStateMixin {
  late final AnimationController _spinController;
  late final AnimationController _swingController;

  @override
  void initState() {
    super.initState();
    _spinController =
        AnimationController(vsync: this, duration: widget.duration)
          ..repeat();

    _swingController =
        AnimationController(vsync: this, duration: widget.duration)
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _spinController.dispose();
    _swingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_spinController, _swingController]),
      builder: (_, child) {
        final wheelAngle = _spinController.value * 2 * pi;
        final swing = sin(_swingController.value * 2 * pi) * pi / 16;

        return Transform.rotate(
          angle: wheelAngle,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Draw the spokes
              CustomPaint(
                size: Size.square(widget.radius * 2),
                painter: SpokesPainter(
                  count: widget.icons.length,
                  radius: widget.radius,
                  rotationAngle: wheelAngle,
                ),
              ),
              // Place the icons with swing effect
              for (int i = 0; i < widget.icons.length; i++)
                _buildHangingIcon(i, wheelAngle, swing),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHangingIcon(int index, double wheelRotation, double swing) {
    final double perIconAngle = 2 * pi / widget.icons.length;
    final double baseAngle = index * perIconAngle;

    final double x = widget.radius * cos(baseAngle);
    final double y = widget.radius * sin(baseAngle);

    // Each icon swings by adding swing angle
    return Transform.translate(
      offset: Offset(x, y),
      child: Transform.rotate(
        angle: -wheelRotation + swing,
        alignment: Alignment.center,
        child: Icon(
          widget.icons[index],
          size: widget.iconSize,
          color: widget.iconColor,
        ),
      ),
    );
  }
}

class SpokesPainter extends CustomPainter {
  final int count;
  final double radius;
  final double rotationAngle;

  SpokesPainter({
    required this.count,
    required this.radius,
    required this.rotationAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2;

    final Offset center = Offset(size.width / 2, size.height / 2);

    for (int i = 0; i < count; i++) {
      final double perIconAngle = 2 * pi / count;
      final double angle = i * perIconAngle + rotationAngle;

      final double x = center.dx + radius * cos(angle);
      final double y = center.dy + radius * sin(angle);

      canvas.drawLine(center, Offset(x, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

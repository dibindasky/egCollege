import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final int start;
  final int end;
  final Duration duration;
  final TextStyle? style;

  const AnimatedCounter({
    super.key,
    required this.start,
    required this.end,
    this.duration = const Duration(seconds: 2),
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: start, end: end),
      duration: duration,
      builder: (context, value, child) {
        return Text(
          '$value',
          style: style ?? const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}

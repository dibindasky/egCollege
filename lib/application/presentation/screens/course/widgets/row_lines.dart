import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class RowLines extends StatelessWidget {
  const RowLines({
    super.key,
    required this.title,
    required this.value,
    this.style,
    this.mainAxisAlignment,
    this.titleStyle,
  });

  final String title;
  final String value;
  final TextStyle? style;
  final TextStyle? titleStyle;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SlideUpFadeInOnScroll(
      child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            Expanded(child: Text(title, style: titleStyle)),
            Text(value, style: style)
          ]),
    );
  }
}

import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class SortingChipContainer extends StatelessWidget {
  const SortingChipContainer(
      {super.key,
      required this.text,
      required this.selected,
      this.width,
      required this.onTap,
      this.backgroundColor,
      this.style});

  final String text;
  final bool selected;
  final VoidCallback onTap;
  final double? width;
  final Color? backgroundColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              mediumPurple.withOpacity(0.4),
              mediumPurple.withOpacity(0.4)
            ]),
            border: Border.all(color: kGrey),
            borderRadius: kRadius10,
          ),
          child: Center(
              child: Text(text,
                  style: style ??
                      textThinStyle1.copyWith(
                          color: kGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.w700)))));
}

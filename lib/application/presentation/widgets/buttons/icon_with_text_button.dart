import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class AnimatedArrowTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const AnimatedArrowTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<AnimatedArrowTextButton> createState() =>
      _AnimatedArrowTextButtonState();
}

class _AnimatedArrowTextButtonState extends State<AnimatedArrowTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: animationDurationFast,
        decoration: BoxDecoration(
          color: _isHovered ? kPurple : Colors.transparent,
          border: Border.all(color: kPurple, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: widget.onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              key: ValueKey(_isHovered),
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.text,
                  style: textStyle1.copyWith(
                    color: _isHovered ? kWhite : kPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: _isHovered ? kWhite : kPurple)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

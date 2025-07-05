import 'package:flutter/material.dart';

class ZoomInMouseHover extends StatefulWidget {
  const ZoomInMouseHover({super.key, required this.child, this.onHover});

  final Widget child;
  final Function(bool value)? onHover;

  @override
  State<ZoomInMouseHover> createState() => ZoomInMouseHoverState();
}

class ZoomInMouseHoverState extends State<ZoomInMouseHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovered = true;
        widget.onHover?.call(true);
      }),
      onExit: (_) {
        setState(() => isHovered = false);
        widget.onHover?.call(false);
      },
      child: AnimatedScale(
        scale: isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }
}

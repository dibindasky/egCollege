import 'package:flutter/material.dart';

class RiseUPMouseHover extends StatefulWidget {
  const RiseUPMouseHover(
      {super.key,
      required this.child,
      this.onHover,
      this.scale = 1.05,
      this.rise = -8.0});

  final Widget child;
  final Function(bool value)? onHover;
  final double scale;
  final double rise;

  @override
  State<RiseUPMouseHover> createState() => RiseUPMouseHoverState();
}

class RiseUPMouseHoverState extends State<RiseUPMouseHover> {
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()
          ..scale(isHovered ? widget.scale : 1.0)
          ..translate(0.0, isHovered ? widget.rise : 0.0),
        child: widget.child,
      ),
    );
  }
}

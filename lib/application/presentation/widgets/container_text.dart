import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class ContainerText extends StatefulWidget {
  const ContainerText(
      {super.key,
      required this.text,
      this.color,
      this.onTap,
      this.height,
      this.textCenter = false,
      this.width,
      this.borderColor,
      this.style,
      this.borderRadius,
      this.rightMargin,
      this.topMargin,
      this.topPadding,
      this.leftPadding,
      this.gradient,
      this.hoverColor});

  final String text;
  final Color? color;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final TextStyle? style;
  final bool textCenter;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? rightMargin;
  final double? topMargin;
  final double? topPadding;
  final double? leftPadding;
  final Gradient? gradient;
  final Color? hoverColor;

  @override
  State<ContainerText> createState() => _ContainerTextState();
}

class _ContainerTextState extends State<ContainerText> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Container(
              margin: EdgeInsets.only(
                  right: widget.rightMargin ?? 0,
                  left: widget.rightMargin ?? 0,
                  top: widget.topMargin ?? 0),
              height: widget.height,
              width: widget.width,
              padding: EdgeInsets.symmetric(
                  horizontal: widget.leftPadding ?? 7,
                  vertical: widget.topPadding ?? 0),
              decoration: BoxDecoration(
                  gradient: isHovered && widget.hoverColor == null
                      ? const LinearGradient(colors: [kCornsilk, kIvory])
                      : widget.gradient,
                  color: isHovered
                      ? widget.hoverColor
                      : widget.color ?? kDefaultIconLightColor,
                  border: Border.all(
                      color: isHovered ? kRed : widget.borderColor ?? kGrey),
                  borderRadius: widget.borderRadius ?? kRadius5),
              child: widget.textCenter
                  ? Center(
                      child: Text(widget.text,
                          style: widget.style, overflow: TextOverflow.ellipsis))
                  : Text(widget.text,
                      style: widget.style, overflow: TextOverflow.ellipsis))));
}

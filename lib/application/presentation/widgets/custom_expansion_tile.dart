import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile(
      {super.key,
      this.whileTap,
      this.isBorder = true,
      this.isExpandable = true,
      this.children,
      this.marginTop,
      this.expansionColor,
      this.expand = false,
      required this.child});
  final List<Widget>? children;
  final Widget child;
  final bool isExpandable;
  final bool expand;
  final bool isBorder;
  final Color? expansionColor;
  final Function(bool)? whileTap;
  final double? marginTop;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  initState() {
    isExpanded = widget.expand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(top: widget.marginTop ?? 0),
      decoration: !widget.isBorder
          ? null
          : BoxDecoration(
              color: widget.expansionColor != null && isExpanded
                  ? widget.expansionColor
                  : null,
              border: Border.all(color: kGrey),
              borderRadius: kRadius5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
            onTap: () {
              setState(() {
                if (widget.isExpandable) {
                  isExpanded = !isExpanded;
                }
                if (widget.whileTap != null) {
                  widget.whileTap!(isExpanded);
                }
              });
            },
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: double.infinity,
                child: widget.child)),
        AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: kEmpty,
            secondChild: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.children != null ? 5 : 0),
                child: widget.children != null
                    ? SlideUpFadeInOnScroll(
                        child: Column(children: widget.children!))
                    : null))
      ]));
}

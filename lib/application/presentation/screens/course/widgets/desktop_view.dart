import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/responsive/responsive.dart';
import 'package:edu_college/application/presentation/widgets/background_image_hover.dart';
import 'package:flutter/material.dart';

class DesktopView extends StatefulWidget {
  const DesktopView(
      {super.key,
      required this.image,
      required this.text,
      this.halfContiner,
      this.isNetWorkImage = true});

  final String image;
  final String text;
  final Widget? halfContiner;
  final bool isNetWorkImage;

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) => SizedBox(
      width: double.infinity,
      height: 500,
      child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Stack(children: [
            BackgroundImage(
                shadeForLeftSide: true,
                leftSideDarknessOpacity: .8,
                borderRadius: Responsive.isMobile(context) ? 8 : 30,
                wantRadius: false,
                isNetWorkImage: widget.isNetWorkImage,
                image: widget.image,
                isHovered: isHovered),
            Positioned(
                top: 10,
                bottom: 10,
                left: 10,
                child: widget.halfContiner ?? kEmpty)
          ])));
}

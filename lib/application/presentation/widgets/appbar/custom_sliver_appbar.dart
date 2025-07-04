import 'dart:ui';

import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({
    super.key,
    this.title,
    this.children,
    this.expandedHeight = 70,
    this.logoWithText = false,
    this.padding = const EdgeInsets.symmetric(vertical: 5),
    this.crossAxisAlignment = CrossAxisAlignment.end,
  });

  final String? title;
  final List<Widget>? children;
  final bool logoWithText;
  final CrossAxisAlignment crossAxisAlignment;
  final double expandedHeight;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      backgroundColor: knill,
      elevation: 5,
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Padding(
            padding: padding,
            child: Row(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kWidth20,
                Image.asset(
                    logoWithText ? eduGuardianLogoWithText : eduGuardianLogo),
                if (title != null) kWidth20,
                if (title != null)
                  Container(
                    // color: Colors.black.withOpacity(0.2),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title!,
                      style: textHeadStyle1.copyWith(
                        color: const Color.fromARGB(255, 70, 9, 240),
                      ),
                    ),
                  ),
                if (children != null) kWidth30,
                if (children != null) ...children!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage(
      {super.key,
      required this.image,
      this.width = 40,
      this.height = 40,
      this.isNetwork = false,
      this.fit,
      this.borderRadius,
      this.border,
      this.wantRadius = true,
      this.horizontalMargin,
      this.onTap,
      this.color});
  final String image;
  final double? height;
  final double? width;
  final bool wantRadius;
  final double? horizontalMargin;
  final BoxFit? fit;
  final BoxBorder? border;
  final double? borderRadius;
  final bool isNetwork;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 0),
          decoration: BoxDecoration(
              color: color ?? kWhite,
              borderRadius: borderRadius != null
                  ? BorderRadius.circular(borderRadius!)
                  : kRadius10,
              border: border),
          child: ClipRRect(
              borderRadius: !wantRadius
                  ? BorderRadius.circular(0)
                  : borderRadius != null
                      ? BorderRadius.circular(borderRadius!)
                      : kRadius10,
              child: isNetwork
                  ? Image.network(
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image),
                      height: height,
                      width: width,
                      image,
                      fit: fit ?? BoxFit.cover)
                  : Image.asset(
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image),
                      height: height ?? 10,
                      width: width ?? 10,
                      image,
                      fit: fit ?? BoxFit.cover))));
}

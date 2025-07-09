import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomSkelton extends StatelessWidget {
  const CustomSkelton(
      {super.key,
      required this.itemCount,
      required this.circleRadius,
      this.highlightColor,
      this.baseColor,
      this.seprator = const SizedBox(),
      this.scrollDirection = Axis.vertical,
      this.tile = false});

  final int itemCount;
  final double circleRadius;
  final Axis scrollDirection;
  final Widget seprator;
  final Color? baseColor;
  final Color? highlightColor;
  final bool tile;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(0),
      separatorBuilder: (context, index) => seprator,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return tile
            ? const ShimmerLoaderTile(height: 200, width: double.infinity)
            : Shimmer.fromColors(
                baseColor: kGrey,
                highlightColor: kWhite,
                child: CircleAvatar(
                    backgroundColor: kPurple100, radius: circleRadius),
              );
      },
    );
  }
}

class ShimmerLoaderTile extends StatelessWidget {
  const ShimmerLoaderTile(
      {super.key,
      required this.height,
      required this.width,
      this.baseColor,
      this.boxDecoration = const BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      this.highlightColor,
      this.margin});

  final double height;
  final double width;
  final Color? baseColor;
  final Color? highlightColor;
  final double? margin;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kGrey,
      highlightColor: kWhite,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: margin ?? 0),
        height: height,
        width: width,
        decoration: boxDecoration,
      ),
    );
  }
}

class GridvewShimmerLoading extends StatelessWidget {
  const GridvewShimmerLoading({super.key, this.itemCount, this.itemBuilder});

  final int? itemCount;
  final Widget? Function(BuildContext, int)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      int crossAxisCount;
      double aspectRatio;
      if (constraints.maxWidth > 1200) {
        // Desktop
        crossAxisCount = 4;
        aspectRatio = 0.9;
      } else if (constraints.maxWidth > 800) {
        // Tablet
        crossAxisCount = 3;
        aspectRatio = 1;
      } else if (constraints.maxWidth > 400) {
        crossAxisCount = 2;
        aspectRatio = 1.3;
      } else {
        // Mobile
        crossAxisCount = 1;
        aspectRatio = 1;
      }
      return GridView.builder(
        padding: const EdgeInsets.all(16.0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: aspectRatio,
        ),
        itemCount: itemCount ?? 12,
        itemBuilder: itemBuilder ??
            (context, index) {
              return Shimmer.fromColors(
                  baseColor: kGrey,
                  highlightColor: kWhite,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: kPurple100,
                          borderRadius: BorderRadius.circular(8))));
            },
      );
    });
  }
}

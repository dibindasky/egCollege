import 'package:flutter/material.dart';

class CustomGriDView extends StatelessWidget {
  const CustomGriDView(
      {super.key,
      required this.crossAxisCount,
      required this.itemBuilder,
      required this.length,
      required this.childAspectRatio,
      this.physics,
      this.crossAxisSpacing});
  final int crossAxisCount;
  final double childAspectRatio;
  final int length;
  final double? crossAxisSpacing;
  final ScrollPhysics? physics;

  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) => GridView.builder(
      shrinkWrap: true,
      physics: physics ?? const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing ?? 0.8,
          mainAxisSpacing: 16,
          childAspectRatio: childAspectRatio),
      itemCount: length,
      itemBuilder: itemBuilder);
}

//import 'package:flexible_grid_view_plus/flexible_grid_view_plus.dart';
// class CustomFlexibleGridView extends StatelessWidget {
//   const CustomFlexibleGridView({
//     super.key,
//     required this.itemCount,
//     required this.itemBuilder,
//     this.minItemWidth = 150,
//     this.hSpacing = 10,
//     this.vSpacing = 10,
//     this.padding = EdgeInsets.zero,
//   });

//   final int itemCount;
//   final Widget Function(BuildContext, int,Object?) itemBuilder;
//   final double minItemWidth;
//   final double hSpacing;
//   final double vSpacing;
//   final EdgeInsetsGeometry padding;

//   @override
//   Widget build(BuildContext context) {
//     return FlexibleGridViewPlus.builder(
//        mainAxisSpacing: 16,
//   crossAxisSpacing: 16,

//       itemCount: itemCount,
//       minItemWidth: minItemWidth,
//       horizontalSpacing: hSpacing,
//       verticalSpacing: vSpacing,
//       padding: padding,
//      itemBuilder:(context, index, item) =>itemBuilder,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//     );
//   }
// }

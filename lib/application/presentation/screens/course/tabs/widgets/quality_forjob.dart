import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class QualityForJOb extends StatelessWidget {
  const QualityForJOb({super.key, this.demandjobs});

  final List<String>? demandjobs;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        verticalMargin: 10,
        horizontalMargin: 10,
        verticalPadding: 10,
        children: [
          kHeight10,
          Text('Qualify for in-demand jobs', style: textHeadStyle1),
          kHeight5,
          BullletPoints(
              texts: demandjobs ?? [], pointStyle: const Icon(Icons.done)),
          kHeight10
        ]);
  }
}

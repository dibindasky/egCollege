import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/requireddocument.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/requireddocument.dart';
import 'package:flutter/material.dart';

class ApplicationRequirements extends StatelessWidget {
  const ApplicationRequirements({super.key, required this.requireddocuments});

  final List<Requireddocument>? requireddocuments;

  @override
  Widget build(BuildContext context) =>
      ContainerWidget(horizontalMargin: 10, children: [
        kHeight10,
        Text('Applications Requirements', style: textHeadStyle1),
        BullletPoints(
            texts: requireddocuments != null
                ? requireddocuments!.map((e) => e.key ?? '').toList()
                : [],
            subTexts: requireddocuments != null
                ? requireddocuments!.map((e) => e.value ?? '').toList()
                : []),
        kHeight10
      ]);
}

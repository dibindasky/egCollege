import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/academic_overview.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/curriculum.dart';
import 'package:flutter/material.dart';

class Acadamics extends StatelessWidget {
  const Acadamics({super.key, this.academicOverview, this.curriculum});

  final AcademicOverview? academicOverview;
  final List<Curriculum>? curriculum;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        kHeight10,
        Text(academicOverview?.description ?? '', style: textStyle1),
        kHeight10,
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ContainerWidget(
                  horizontalMargin: 5,
                  boxShadow: boxShadow2,
                  children: [
                kHeight10,
                Text('Key Academic Achievements and Highlights',
                    style: textHeadStyle1),
                kHeight5,
                BullletPoints(texts: const [
                  'Career-centric curriculum:',
                  'Next-gen leadership skills:',
                  'Worldwide virtual classrooms:',
                  'Program length:',
                  'Flexibility:'
                ], subTexts: academicOverview?.points),
                kHeight10
              ])),
          kWidth15,
          Expanded(
              child: ContainerWidget(
                  boxShadow: boxShadow2,
                  horizontalMargin: 5,
                  children: [
                kHeight10,
                Text('Curriculum', style: textHeadStyle1),
                kHeight5,
                const Text(
                    'Versatile curriculum crafted to empower your career aspirations. Preparation is key to your success in this program. For successful completion of the degree, all students are required to'),
                kHeight5,
                ...List.generate(
                    curriculum?.length ?? 0,
                    (index) => SlideUpFadeInOnScroll(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(curriculum?[index].title ?? '',
                                  style: textStyle1),
                              ...List.generate(
                                  curriculum?[index].units?.length ?? 0,
                                  (unteIndex) => Text(
                                      curriculum?[index].units?[unteIndex] ??
                                          ''))
                            ]))),
                kHeight10
              ]))
        ]),
        kHeight10
      ]));
}

import 'package:edu_college/application/presentation/screens/course/tabs/widgets/quality_forjob.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/course_trajectory.dart';
import 'package:flutter/material.dart';

class Trajectory extends StatelessWidget {
  const Trajectory({super.key, this.courseTrajectory});

  final CourseTrajectory? courseTrajectory;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return SlideUpFadeInOnScroll(
        child: Column(
            children: isDesktop
                ? [
                    Row(children: [
                      kWidth15,
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            kHeight10,
                            SlideUpFadeInOnScroll(
                                direction: SlideDirection.right,
                                child: Text(
                                    'Enhance your professional trajectory in your chosen field.',
                                    style: textHeadStyle1)),
                            kHeight5,
                            Text(courseTrajectory?.description ?? "",
                                style: textStyle1),
                            kHeight10
                          ])),
                      Expanded(
                          child: QualityForJOb(
                              demandjobs: courseTrajectory?.demandjobs ?? []))
                    ])
                  ]
                : [
                    Column(children: [
                      kHeight10,
                      Text(
                          'Enhance your professional trajectory in your chosen field.',
                          style: textHeadStyle1),
                      kHeight5,
                      Text(courseTrajectory?.description ?? "",
                          style: textStyle1),
                      kHeight10
                    ]),
                    QualityForJOb(
                        demandjobs: courseTrajectory?.demandjobs ?? []),
                    kHeight10
                  ]));
  }
}

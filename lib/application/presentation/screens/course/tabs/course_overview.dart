import 'package:edu_college/application/presentation/screens/course/tabs/widgets/frequently_asked_questions.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/widgets/istheprogram_right_foryou.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/widgets/over_view_content.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/widgets/toptier_prgram.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/widgets/trajectory.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/briefoverview.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/course_trajectory.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/faq.dart';
import 'package:flutter/material.dart';

class CourseOverview extends StatelessWidget {
  const CourseOverview(
      {super.key,
      this.briefoverview,
      this.programInsight,
      this.courseTrajectory,
      this.faqs});

  final Briefoverview? briefoverview;
  final List<String>? programInsight;
  final CourseTrajectory? courseTrajectory;
  final List<Faq>? faqs;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(children: [
          OverViewContent(briefoverview: briefoverview),
          kHeight15,
          IsTheProgramRightForYou(programInsight: programInsight),
          kHeight15,
          const TopTierProgram(),
          kHeight15,
          Trajectory(courseTrajectory: courseTrajectory),
          kHeight15,
          FrequentlyAskedQuestions(faqs: faqs),
          kHeight10
        ]));
  }
}

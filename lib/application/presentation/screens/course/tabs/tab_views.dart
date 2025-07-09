import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/acodomics.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/admission.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/careers.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/course_overview.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/student_experice.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/tuition_and_financing.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViews extends StatelessWidget {
  const TabViews({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Obx(() {
      if (courseController.selectedTab.value == 0) {
        return CourseOverview(
            briefoverview: courseController.courseDetail.value.briefoverview,
            courseTrajectory:
                courseController.courseDetail.value.courseTrajectory,
            faqs: courseController.courseDetail.value.faqs,
            programInsight: courseController.courseDetail.value.programInsight);
      } else if (courseController.selectedTab.value == 1) {
        return Adminssion(
            admissionOvervieweDescription: courseController
                .courseDetail.value.admissionOverview?.description,
            minimumrequirements:
                courseController.courseDetail.value.minimumrequirements,
            requireddocuments:
                courseController.courseDetail.value.requireddocuments);
      } else if (courseController.selectedTab.value == 2) {
        return Acadamics(
            academicOverview:
                courseController.courseDetail.value.academicOverview,
            curriculum: courseController.courseDetail.value.curriculum);
      } else if (courseController.selectedTab.value == 3) {
        return Careers(
            advancecareer: courseController.courseDetail.value.advancecareer,
            jobdemand: courseController.courseDetail.value.jobdemand,
            jobrecommendation:
                courseController.courseDetail.value.jobrecommendation,
            stepahead: courseController.courseDetail.value.stepahead,
            careersoverview:
                courseController.courseDetail.value.careersoverview);
      } else if (courseController.selectedTab.value == 4) {
        return const TuitionAndFinancing();
      } else if (courseController.selectedTab.value == 5) {
        return StudentExperience(
            studentexperience:
                courseController.courseDetail.value.studentexperience);
      } else {
        return kEmpty;
      }
    });
  }
}

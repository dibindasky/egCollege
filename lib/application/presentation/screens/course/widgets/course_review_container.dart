import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseReviewContainer extends StatelessWidget {
  const CourseReviewContainer({
    super.key,
    required this.courseId,
    required this.courseSlug,
    required this.courseImage,
    required this.courseName,
  });

  final String courseId;
  final String courseSlug;
  final String courseImage;
  final String courseName;

  @override
  Widget build(BuildContext context) => ContainerWidget(
      border: Border.all(color: kPurple, width: 2),
      boxShadow: const [],
      horizontalMargin: 10,
      width: 380,
      children: [
        kHeight10,
        const Row(children: [
          Icon(Icons.person),
          kWidth10,
          Text('14 Already enrolled '),
        ]),
        kHeight5,
        FittedBox(
            child: Row(children: [
          kWidth10,
          ...List.generate(
              5,
              (index) => const Row(
                  children: [kWidth5, Icon(Icons.star, color: kPurple)])),
          kWidth10,
          Text('4.8 out of 5 ',
              style: textStyle1.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w700)),
          kWidth5,
          Text(
              '(${Get.find<CourseController>().allReviewByCourse.value.data?.length ?? 0 + 4} reviews)')
        ])),
        kHeight10
      ]);
}

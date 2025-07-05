import 'package:edu_college/application/presentation/screens/course/widgets/course_review_container.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/container_text.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail(
      {super.key,
      required this.courseId,
      required this.courseSlug,
      this.universityname,
      required this.courseImage,
      required this.courseName});

  final String courseId;
  final String courseSlug;
  final String courseName;
  final String courseImage;
  final String? universityname;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return SlideUpFadeInOnScroll(
      child: ContainerWidget(
          verticalMargin: 15,
          boxShadow: boxShadow2,
          horizontalMargin: 15,
          verticalPadding: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isDesktop
              ? [
                  Row(children: [
                    CourseReviewContainer(
                        courseId: courseId,
                        courseSlug: courseSlug,
                        courseImage: courseImage,
                        courseName: courseName),
                    kWidth10,
                    Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kHeight10,
                            Text('About the instructor', style: textHeadStyle1),
                            kHeight5,
                            Text(
                                'Our courses are led by seasoned industry professionals with extensive experience in their respective fields. They Bring a Wealth of knowledge from managing high-profile projects and mentoring Numerous successful persons ',
                                style: textStyle1),
                            kHeight10
                          ]),
                    )
                  ])
                ]
              : [
                  kHeight10,
                  Row(children: [
                    const ContainerText(text: 'Affiliated With'),
                    kWidth30,
                    ContainerText(text: universityname ?? '')
                  ]),
                  kHeight10,
                  CourseReviewContainer(
                      courseId: courseId,
                      courseSlug: courseSlug,
                      courseImage: courseImage,
                      courseName: courseName),
                  kHeight10,
                  Text('About the instructor',
                      style: textStyle1.copyWith(fontWeight: FontWeight.w700)),
                  kHeight5,
                  Text(
                      'Our courses are led by seasoned industry prof‚essionals with extensive experience in their respective fields. They Bring a Wealth of knowledge from managing high-profile projects and mentoring Numerous successful persons ',
                      style: textStyle1),
                  kHeight10
                ]),
    );
  }
}

import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/tab_views.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/course_initail_detail.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/course_mini_des.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/course_tabs.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/desktop_view.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/appbar/custom_sliver_appbar.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/get_all_couses.dart'
    as d;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key, this.course, required this.id});

  final d.GetAllCouses? course;
  final String id;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 768;
    final courseController = Get.find<CourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      courseController.getSingleCourse(id: id, course: course);
    });
    return Scaffold(
        body: CustomScrollView(slivers: [
      const CustomSliverAppbar(title: 'Course Details'),
      SliverToBoxAdapter(child: Obx(() {
        if (courseController.courseDetailLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.all(isMobile ? 10 : 80),
              child: Column(children: [
                DesktopView(
                  image: courseController.courseDetail.value.image ?? '',
                  text: courseController.courseDetail.value.name ?? '',
                  halfContiner: CourcseMiniDescription(
                    courseSlug: courseController.courseDetail.value.slug ?? '',
                    courseId: courseController.courseDetail.value.id ?? "",
                    course: courseController.courseDetail.value.name ?? '',
                    description:
                        courseController.courseDetail.value.description ?? "",
                  ),
                ),
                kHeight10,
                CourseDetail(
                  courseId: courseController.courseDetail.value.id ?? '',
                  courseImage: courseController.courseDetail.value.image ?? "",
                  courseName: courseController.courseDetail.value.name ?? '',
                  courseSlug: courseController.courseDetail.value.slug ?? "",
                  universityname:
                      courseController.courseDetail.value.universityname,
                ),
                kHeight10,
                const CourseTabs(),
                kHeight10,
                const TabViews()
              ])),
          const CompanyFooterSection()
        ]));
      }))
    ]));
  }
}

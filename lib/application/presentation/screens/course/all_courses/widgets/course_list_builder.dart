import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/cource_card.dart';
import 'package:edu_college/application/presentation/widgets/custom_grid_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CourseListBuilder extends StatelessWidget {
  const CourseListBuilder({super.key, this.serviceName});

  final String? serviceName;

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Obx(() {
      final courses = courseController.filteredCourses;
      if (courseController.isloading.value) {
        return const SizedBox(
            height: 400,
            child: Center(child: CircularProgressIndicator(color: kPurple)));
      }
      if (courses.isEmpty) {
        return SizedBox(
            height: 300,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Upcoming Courses Coming Soon', style: textHeadStyle1),
              Text('Stay Tuned for our Upcoming courses available worldwide',
                  style: textStyle1)
            ]));
      }
      return LayoutBuilder(builder: (context, constraints) {
        int crossAxisCount;
        double childAspectRatio;
        if (constraints.maxWidth > 1200) {
          // Desktop
          crossAxisCount = 4;
          childAspectRatio = .9;
        } else if (constraints.maxWidth > 800) {
          // Tablet
          crossAxisCount = 3;
          childAspectRatio = 1;
        } else if (constraints.maxWidth > 600) {
          // Tablet
          crossAxisCount = 2;
          childAspectRatio = 1;
        } else if (constraints.maxWidth > 400) {
          // Tablet
          crossAxisCount = 2;
          childAspectRatio = 1;
        } else {
          // Mobile
          crossAxisCount = 2;
          childAspectRatio = 1;
        }
        return CustomGriDView(
          childAspectRatio: childAspectRatio,
          crossAxisCount: crossAxisCount,
          length: courses.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => context.go(
                Routes.courseDetail
                    .replaceFirst(":id", courses[index].id ?? ""),
                extra: <String, dynamic>{
                  'course': courses[index],
                  'serviceName': serviceName ?? ''
                }),
            child: CourceCard(
                course: ServiceFeatureModel(
                    description: '',
                    title: courses[index].name ?? '',
                    imagePath: courses[index].image ?? ''),
                constraints: constraints),
          ),
        );
      });
    });
  }
}

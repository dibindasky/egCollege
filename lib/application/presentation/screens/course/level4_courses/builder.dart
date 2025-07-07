import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/screens/course/level4_courses/level4_course.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/cource_card.dart';
import 'package:edu_college/application/presentation/widgets/custom_grid_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LevelFourCourses extends StatelessWidget {
  const LevelFourCourses({super.key, this.serviceName});

  final String? serviceName;

  @override
  Widget build(BuildContext context) {
    //final courses = othmLevel4DiplomasJson;
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
      final othmLevel4Diplomas =
          othmLevel4DiplomasJson.map((e) => OTHMDiploma.fromJson(e)).toList();
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        kHeight30,
        Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Level 4 Courses', style: textHeadStyle1)),
        kHeight15,
        CustomGriDView(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            length: othmLevel4Diplomas.length,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () => context.go(
                        Routes.level4CourseDetailView
                            .replaceFirst(":id", othmLevel4Diplomas[index].id),
                        extra: <String, dynamic>{
                          'course': othmLevel4Diplomas[index]
                        }),
                child: CourceCard(
                    course: ServiceFeatureModel(
                      title: othmLevel4Diplomas[index].courseName,
                      description: othmLevel4Diplomas[index].description,
                      imagePath: '', // or: courses[index].image ?? ''
                    ),
                    constraints: constraints)))
      ]);
    });
  }
}

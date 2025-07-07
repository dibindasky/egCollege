import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_list_builder.dart';
import 'package:edu_college/application/presentation/screens/course/level4_courses/builder.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color(0xFFE8F4F0),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Breadcrumb
                          _buildBreadcrumb(),
                          kHeight20,

                          // Header Section
                          _buildHeader(),
                          kHeight10,

                          // Description
                          const Text(
                              'Courses that gets you one step closer to your dreams.',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400)),
                          const SizedBox(height: 30),
                          //const CourseListBuilder(),
                          const LevelSevenCourses(),
                          const LevelFiveCourses(),
                          const LevelFourCourses()
                        ])))));
  }

  Widget _buildBreadcrumb() => Row(children: [
        GestureDetector(
            //  onTap: () => Navigator.pop(context),
            child: const Text('Home',
                style: TextStyle(color: Colors.black54, fontSize: 14))),
        kWidth10,
        const Icon(Icons.chevron_right, size: 16, color: Colors.black54),
        kWidth10,
        const Text('All Courses',
            style: TextStyle(color: Colors.black54, fontSize: 14))
      ]);

  Widget _buildHeader() => const Row(children: [
        Text('Courses',
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
        SizedBox(width: 16)
      ]);
}

class ProgramCard {
  final String title;
  final String imageUrl;
  final String category;

  ProgramCard({
    required this.title,
    required this.imageUrl,
    required this.category,
  });
}

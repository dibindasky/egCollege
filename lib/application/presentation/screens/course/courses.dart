import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_list_builder.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE8F4F0),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
                          const SizedBox(height: 40),

                          // Search and Filter Section
                          _buildSearchAndFilter(),
                          const SizedBox(height: 30),
                          const CourseListBuilder()
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
        const Text('All Programs',
            style: TextStyle(color: Colors.black54, fontSize: 14))
      ]);

  Widget _buildHeader() => Row(children: [
        const Text('All Programs',
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
        const SizedBox(width: 16),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFE8D5F2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(mainAxisSize: MainAxisSize.min, children: [
              Text(
                '🎉',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 8),
              Text('47 new programs added!',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87))
            ]))
      ]);

  Widget _buildSearchAndFilter() =>
      LayoutBuilder(builder: (context, constraints) {
        return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Showing All of 47 results',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16)
            ]);
      });
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

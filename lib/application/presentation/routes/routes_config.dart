import 'package:edu_college/application/presentation/routes/route_title.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/screens/about/about.dart';
import 'package:edu_college/application/presentation/screens/contact_us/contsct_us.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_list_builder.dart';
import 'package:edu_college/application/presentation/screens/course/course_detail.dart';
import 'package:edu_college/application/presentation/screens/course/courses.dart';
import 'package:edu_college/application/presentation/screens/course/level4_courses/course_detail.dart';
import 'package:edu_college/application/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterConfig {
  static final router = GoRouter(
      initialLocation: '/',
      routes: generalRoutes,
      errorBuilder: (context, state) => _errorScreen());

  static final List<RouteBase> generalRoutes = [
    GoRoute(
        path: Routes.initial,
        builder: (context, state) {
          changeWebTitle(context, 'eduGuardian - Home');
          return const ScreenHome();
        }),
    GoRoute(
        path: Routes.contactUs,
        builder: (context, state) {
          changeWebTitle(context, 'eduGuardian - Contact Us');
          return const ContactFormScreen();
        }),
    GoRoute(
        path: Routes.about,
        builder: (context, state) {
          changeWebTitle(context, 'eduGuardian - About');
          return const AboutScreen();
        }),
    GoRoute(
        path: Routes.courses,
        builder: (context, state) {
          changeWebTitle(context, 'eduGardian - Courses');
          return const CoursesScreen();
        }),
    GoRoute(
        path: Routes.courseDetail,
        builder: (context, state) {
          final course = state.extra as Map<String, dynamic>? ?? {};
          changeWebTitle(context, 'eduGardian - Course Detail');
          return CourseDetailScreen(
              id: state.pathParameters['id'] ?? '', course: course['course']);
        }),
    GoRoute(
        path: Routes.level4CourseDetailView,
        builder: (context, state) {
          final course = state.extra as Map<String, dynamic>? ?? {};
          changeWebTitle(context, 'eduGardian - Level 4 Course Detail');
          return Level4CourseDetailView(
              id: state.pathParameters['id'] ?? '', course: course['course']);
        })
  ];
  static _errorScreen() => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      );
}

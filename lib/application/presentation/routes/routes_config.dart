import 'package:edu_college/application/presentation/routes/route_title.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/screens/about/about.dart';
import 'package:edu_college/application/presentation/screens/contact_us/contsct_us.dart';
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
          changeWebTitle(context, 'eduGardian - Home');
          return const ELearningLandingPage();
        }),
    GoRoute(
        path: Routes.contactUs,
        builder: (context, state) {
          changeWebTitle(context, 'eduGardian - Contact Us');
          return const ContactFormScreen();
        }),
    GoRoute(
        path: Routes.about,
        builder: (context, state) {
          changeWebTitle(context, 'eduGardian - About');
          return const ELearningLandingPage();
        }),
  ];
  static _errorScreen() => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      );
}

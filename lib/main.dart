import 'package:edu_college/application/presentation/routes/routes_config.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/domain/core/binding/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const EduGuardian());
}

class EduGuardian extends StatelessWidget {
  const EduGuardian({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp.router(
        routeInformationParser: GoRouterConfig.router.routeInformationParser,
        routeInformationProvider:
            GoRouterConfig.router.routeInformationProvider,
        routerDelegate: GoRouterConfig.router.routerDelegate,
        initialBinding: AllControllerBinding(),
        debugShowCheckedModeBanner: false,
        title: 'eduGuardian',
        theme: ThemeData(
          fontFamily: 'HelveticaNeue',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: kWhite,
          useMaterial3: true,
        ),
      );
}

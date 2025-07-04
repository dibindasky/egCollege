import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [CompanyFooterSection()]));
  }
}

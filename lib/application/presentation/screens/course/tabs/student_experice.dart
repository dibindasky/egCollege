import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class StudentExperience extends StatelessWidget {
  const StudentExperience({super.key, this.studentexperience});

  final List<String>? studentexperience;

  @override
  Widget build(BuildContext context) => SlideUpFadeInOnScroll(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            kHeight10,
            Text(
                'What\'s the experience of earning your degree through eduGuardian like?',
                style: textHeadStyle1),
            ...List.generate(
              studentexperience?.length ?? 0,
              (index) =>
                  Text(studentexperience?[index] ?? "", style: textStyle1),
            ),
            kHeight10
          ])));
}

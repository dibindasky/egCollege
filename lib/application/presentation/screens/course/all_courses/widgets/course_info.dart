import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CourseInfoWidget extends StatelessWidget {
  const CourseInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String text =
        'Elevate your career with our Programs, where we offer meticulously crafted courses to provide you with industry-ready skills across diverse fields. Whether you are starting fresh or looking to upskill, our programs are designed to deliver expertise and knowledge in just a few months, no matter your prior experience.';
    return LayoutBuilder(builder: (context, constrains) {
      bool isTab = constrains.maxWidth < 600;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Row(
              children: [
                if (!isTab)
                  const SizedBox(width: 150
                      // height: 200,
                      ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                      borderRadius: kRadius10,
                      color: const Color(0xFFB19CD9),
                    ),
                    child: Row(
                      children: [
                        if (!isTab)
                          const SizedBox(
                            width: 200,
                          ),
                        Expanded(
                          child: Text(text,
                              style: textStyle1.copyWith(
                                color: const Color(0xFFB19CD9),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: kRadius10,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Text(
                      text,
                      style: textStyle1.copyWith(
                        color: const Color.fromARGB(255, 46, 1, 77),
                      ),
                    ),
                  ),
                ),
                kWidth30
              ],
            )
          ],
        ),
      );
    });
  }
}

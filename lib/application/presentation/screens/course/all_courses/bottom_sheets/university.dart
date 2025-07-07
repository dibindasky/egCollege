import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class University extends StatelessWidget {
  const University({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              kHeight5,
              Center(
                  child: Container(
                      width: 80,
                      height: 5,
                      decoration:
                          BoxDecoration(color: kGrey, borderRadius: kRadius5))),
              kHeight20,
              Text('University', style: textHeadStyle1),
              kHeight10,
              const Divider(color: kGrey),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: courseController.universities.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final university = courseController.universities[index];
                      return Container(
                          color: kWhite,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(university, style: textStyle1),
                                Obx(() {
                                  return Checkbox(
                                    value: courseController.selectedUniversities
                                        .contains(university),
                                    onChanged: (value) {
                                      if (value == true) {
                                        courseController.selectedUniversities
                                            .add(university);
                                      } else {
                                        courseController.selectedUniversities
                                            .remove(university);
                                      }
                                      courseController.filterCourses(
                                        courseController.selectedUniversities,
                                        whiChFilter: 'UNIVERSITY',
                                      );
                                    },
                                    activeColor: kPurple,
                                  );
                                })
                              ]));
                    }),
                kHeight10
              ])))
            ]));
  }
}

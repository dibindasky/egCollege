import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class City extends StatelessWidget {
  const City({super.key});

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
              kHeight40,
              Text('Fees', style: textHeadStyle1),
              kHeight10,
              const Divider(color: kGrey),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: courseController.cities.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final city = courseController.cities[index];
                      return Container(
                          color: kWhite,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(courseController.cities[index],
                                    style: textStyle1),
                                Obx(() => Checkbox(
                                      value: courseController.selectedCity
                                          .contains(city),
                                      onChanged: (value) {
                                        if (value == true) {
                                          courseController.selectedCity
                                              .add(city);
                                        } else {
                                          courseController.selectedCity
                                              .remove(city);
                                        }
                                        courseController.filterCourses(
                                          courseController.selectedCity,
                                          whiChFilter: 'CITY',
                                        );
                                      },
                                      activeColor: kPurple,
                                    ))
                              ]));
                    }),
                kHeight20
              ])))
            ]));
  }
}

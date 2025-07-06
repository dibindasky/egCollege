import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseCountry extends StatelessWidget {
  const CourseCountry({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.find<FlightSortController>();
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
              Text('Country', style: textHeadStyle1),
              kHeight10,
              const Divider(color: kGrey),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: courseController.countries.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final country = courseController.countries[index];
                      return Container(
                          color: kWhite,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(courseController.countries[index],
                                    style: textStyle1),
                                Obx(() => Checkbox(
                                      value: courseController.selectedCountry
                                          .contains(country),
                                      onChanged: (value) {
                                        if (value == true) {
                                          courseController.selectedCountry
                                              .add(country);
                                        } else {
                                          courseController.selectedCountry
                                              .remove(country);
                                        }
                                        courseController.filterCourses(
                                          courseController.selectedCountry,
                                          whiChFilter: 'COUNTRY',
                                        );
                                      },
                                      activeColor: kGreen,
                                    ))
                              ]));
                    }),
                kHeight5,
                kHeight20
              ])))
            ]));
  }
}

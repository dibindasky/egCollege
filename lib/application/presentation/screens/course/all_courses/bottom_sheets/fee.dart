import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fee extends StatelessWidget {
  const Fee({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
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
              Text('Fee', style: textHeadStyle1),
              kHeight10,
              const Divider(color: kGrey),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: courseController.feeRanges.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                        color: kWhite,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(courseController.feeRanges[index]['label'],
                                  style: textStyle1),
                              Obx(() => Checkbox(
                                  value: courseController.selectedFee ==
                                      courseController.feeRanges[index]
                                          ['label'],
                                  onChanged: (value) {
                                    courseController.filterCoursesByFee(
                                        selectedRange: courseController
                                            .feeRanges[index]['label']);
                                  },
                                  activeColor: kPurple))
                            ]))),
                kHeight5,
                kHeight20
              ])))
            ]));
  }
}

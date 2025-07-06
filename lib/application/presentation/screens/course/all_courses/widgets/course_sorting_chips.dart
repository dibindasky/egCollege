import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/bottom_sheets/city.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/bottom_sheets/country.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/bottom_sheets/fee.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/bottom_sheets/university.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/sorting_chip_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseSortingChips extends StatelessWidget {
  const CourseSortingChips({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Obx(() => Row(children: [
          Expanded(
              child: Stack(children: [
            SortingChipContainer(
                text: 'University',
                selected: true,
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: knill,
                      context: context,
                      builder: (context) => const University());
                }),
            courseController.selectedUniversities.isNotEmpty
                ? ChipPositionedIcon(
                    onTap: () =>
                        courseController.clearFilter(whichFilter: 'UNIVERSITY'))
                : kEmpty
          ])),
          Expanded(
              child: Stack(children: [
            SortingChipContainer(
                text: 'Country',
                selected: true,
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: knill,
                      context: context,
                      builder: (context) => const CourseCountry());
                }),
            courseController.selectedCountry.isNotEmpty
                ? ChipPositionedIcon(
                    onTap: () =>
                        courseController.clearFilter(whichFilter: 'COUNTRY'))
                : kEmpty
          ])),
          Expanded(
              child: Stack(children: [
            SortingChipContainer(
                text: 'City',
                selected: true,
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: knill,
                      context: context,
                      builder: (context) => const City());
                }),
            courseController.selectedCity.isNotEmpty
                ? ChipPositionedIcon(
                    onTap: () =>
                        courseController.clearFilter(whichFilter: 'CITY'))
                : kEmpty
          ])),
          Expanded(
              child: Stack(children: [
            SortingChipContainer(
                text: 'Fee',
                selected: true,
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: knill,
                      context: context,
                      builder: (context) => const Fee());
                }),
            courseController.selectedFee.isNotEmpty
                ? ChipPositionedIcon(onTap: () {
                    courseController.clearFilter(whichFilter: 'FEE');
                  })
                : kEmpty
          ]))
        ]));
  }
}

class ChipPositionedIcon extends StatelessWidget {
  const ChipPositionedIcon({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0,
        top: 0,
        child: CircleAvatar(
          backgroundColor: kGreen,
          radius: 12,
          child: GestureDetector(
              onTap: onTap,
              child: const Icon(Icons.clear, color: kWhite, size: 15)),
        ));
  }
}

import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SortingSection extends StatelessWidget {
  const SortingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return SizedBox(
        width: 310,
        child: Column(children: [
          kHeight10,
          // _buildExpansionTile(
          //     expand: courseController.universityArrow,
          //     list: courseController.universities,
          //     selectedList: courseController.selectedUniversities,
          //     title: "University",
          //     whileTap: (value) {
          //       courseController.changeArrowSorting('UNIVERSITY');
          //     },
          //     onChanged: (value, data) {
          //       if (value == true) {
          //         courseController.selectedUniversities.add(data);
          //       } else {
          //         courseController.selectedUniversities.remove(data);
          //       }
          //       courseController.filterCourses(
          //         courseController.selectedUniversities,
          //         whiChFilter: 'UNIVERSITY',
          //       );
          //     }),

          CustomExpansionTile(
              expansionColor: mediumPurple.withOpacity(0.5),
              expand: courseController.universityArrow.value,
              whileTap: (value) =>
                  courseController.changeArrowSorting('UNIVERSITY'),
              isBorder: true,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("University",
                    overflow: TextOverflow.ellipsis, style: textStyle1),
                const Spacer(),
                Obx(() => Icon(courseController.universityArrow.value
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down))
              ]),
              children:
                  List.generate(courseController.universities.length, (index) {
                final university = courseController.universities[index];
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(university, style: textThinStyle1),
                      Obx(() => Checkbox(
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
                          activeColor: kPurple))
                    ]);
              })),
          kHeight20,
          CustomExpansionTile(
              expansionColor: mediumPurple.withOpacity(0.5),
              expand: courseController.countryArrow.value,
              whileTap: (value) =>
                  courseController.changeArrowSorting('COUNTRY'),
              isBorder: true,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Country",
                    overflow: TextOverflow.ellipsis, style: textStyle1),
                const Spacer(),
                Obx(() => Icon(courseController.countryArrow.value
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down))
              ]),
              children:
                  List.generate(courseController.countries.length, (index) {
                final country = courseController.countries[index];
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(country, style: textStyle1),
                      Obx(
                        () => Checkbox(
                          value: courseController.selectedCountry
                              .contains(country),
                          onChanged: (value) {
                            if (value == true) {
                              courseController.selectedCountry.add(country);
                            } else {
                              courseController.selectedCountry.remove(country);
                            }
                            courseController.filterCourses(
                              courseController.selectedCountry,
                              whiChFilter: 'COUNTRY',
                            );
                          },
                          activeColor: kPurple,
                        ),
                      )
                    ]);
              })),
          kHeight20,
          CustomExpansionTile(
              expansionColor: mediumPurple.withOpacity(0.5),
              expand: courseController.cityArrow.value,
              whileTap: (value) => courseController.changeArrowSorting('CITY'),
              isBorder: true,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("City",
                    overflow: TextOverflow.ellipsis, style: textStyle1),
                const Spacer(),
                Obx(() => Icon(courseController.cityArrow.value
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down))
              ]),
              children: List.generate(courseController.cities.length, (index) {
                final city = courseController.cities[index];
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(city, style: textStyle1),
                      Obx(() => Checkbox(
                            value: courseController.selectedCity.contains(city),
                            onChanged: (value) {
                              if (value == true) {
                                courseController.selectedCity.add(city);
                              } else {
                                courseController.selectedCity.remove(city);
                              }
                              courseController.filterCourses(
                                courseController.selectedCity,
                                whiChFilter: 'CITY',
                              );
                            },
                            activeColor: kPurple,
                          ))
                    ]);
              })),
          kHeight20,
          CustomExpansionTile(
              expansionColor: mediumPurple.withOpacity(0.5),
              expand: courseController.feeArrow.value,
              whileTap: (value) => courseController.changeArrowSorting('FEE'),
              isBorder: true,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Fee", overflow: TextOverflow.ellipsis, style: textStyle1),
                const Spacer(),
                Obx(() => Icon(courseController.feeArrow.value
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down))
              ]),
              children:
                  List.generate(courseController.feeRanges.length, (index) {
                final fee = courseController.feeRanges[index];
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(fee['label'], style: textStyle1),
                      Obx(() => Checkbox(
                            value: courseController.selectedCity
                                .contains(fee['label']),
                            onChanged: (value) {
                              if (value == true) {
                                courseController.selectedCity.add(fee['label']);
                              } else {
                                courseController.selectedCity
                                    .remove(fee['label']);
                              }
                              courseController.filterCourses(
                                courseController.selectedCity,
                                whiChFilter: 'FEE',
                              );
                            },
                            activeColor: kPurple,
                          ))
                    ]);
              }))
        ]));
  }

  CustomExpansionTile _buildExpansionTile(
      {required RxBool expand,
      required String title,
      required Function(bool) whileTap,
      required RxList<String> list,
      required RxList<String> selectedList,
      required void Function(bool, String) onChanged}) {
    return CustomExpansionTile(
        expansionColor: mediumPurple.withOpacity(0.5),
        expand: expand.value,
        whileTap: (value) => whileTap(value),
        isBorder: true,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, overflow: TextOverflow.ellipsis, style: textStyle1),
          const Spacer(),
          Obx(() =>
              Icon(expand.value ? Icons.arrow_drop_up : Icons.arrow_drop_down))
        ]),
        children: List.generate(list.length, (index) {
          final data = list[index];
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data, style: textThinStyle1),
                Obx(() => Checkbox(
                    value: selectedList.contains(data),
                    onChanged: (value) {
                      onChanged(value ?? false, data);
                    },
                    activeColor: kPurple))
              ]);
        }));
  }
}

import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/container_text.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseTabs extends StatefulWidget {
  const CourseTabs({super.key});

  @override
  State<CourseTabs> createState() => _CourseTabsState();
}

class _CourseTabsState extends State<CourseTabs> {
  late ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  int check = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Course overview',
      'Admission',
      'Academics',
      'Careers',
      'Tuition and Financing',
      'Student Experience'
    ];
    final courseController = Get.find<CourseController>();
    return Obx(() {
      if (check != 0) {
        // Auto scroll tab according to the tab index
        final onePotion =
            scrollController.position.maxScrollExtent / (tabs.length);
        scrollController.animateTo(
            courseController.selectedTab.value == 0
                ? scrollController.position.minScrollExtent
                : courseController.selectedTab.value == ((tabs.length) - 1)
                    ? scrollController.position.maxScrollExtent
                    : onePotion * courseController.selectedTab.value,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut);
      }
      check++;
      return SlideUpFadeInOnScroll(
        direction: SlideDirection.left,
        child: ContainerWidget(
            height: 79,
            backGroundColor: kGreyLightBackground,
            boxShadow: boxShadow2,
            horizontalPadding: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            horizontalMargin: 15,
            verticalPadding: 10,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: scrollController,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                          tabs.length,
                          (index) => SlideUpFadeInOnScroll(
                                child: ContainerText(
                                    textCenter: true,
                                    hoverColor: kPurple300,
                                    color: index ==
                                            courseController.selectedTab.value
                                        ? kPurple300
                                        : kWhite,
                                    height: 37,
                                    onTap: () => index !=
                                            courseController.selectedTab.value
                                        ? courseController
                                            .changeTabSelection(index)
                                        : null,
                                    borderColor: index ==
                                            courseController.selectedTab.value
                                        ? kPurple
                                        : kGrey,
                                    rightMargin: 5,
                                    text: tabs[index],
                                    style: textStyle1.copyWith(
                                        fontWeight:
                                            index == courseController.selectedTab.value
                                                ? FontWeight.w700
                                                : FontWeight.w500,
                                        color: index ==
                                                courseController.selectedTab.value
                                            ? kWhite
                                            : kBlack)),
                              ))))
            ]),
      );
    });
  }
}

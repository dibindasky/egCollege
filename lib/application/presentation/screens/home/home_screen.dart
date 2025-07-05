import 'package:edu_college/application/controller/home/home_controller.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/career_support_and_placements_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/empovering_journey_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/enrollment_admission_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/home_intro_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/our_programs_sections.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/statictict_count_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/student_feedback_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/why_choose_us_section.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/appbar/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppbar(
            title: '',
            logoWithText: true,
            children: List.generate(
              controller.homeTitles.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  controller.selectedHomeTitle.value,
                  style: textStyle1.copyWith(
                    color: controller.selectedHomeTitle.value ==
                            controller.homeTitles[index]
                        ? kPurple
                        : kBlack,
                  ),
                ),
              ),
            ),
          ),
          SliverList.list(children: const [
            HomeIntoSection(),
            WhyChooseUsSection(),
            StatictsCountsSection(),
            CareerSupportAndPlacementSection(),
            EmpoveringJourneySection(),
            EnrollmentAdmissionSection(),
            OurProgramsSection(),
            StudentFeedbackSection(),
            CompanyFooterSection(),
          ])
        ],
      ),
    );
  }
}

import 'package:edu_college/application/controller/home/home_controller.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/app_bar.dart';
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
import 'package:edu_college/application/presentation/widgets/arrow_to_top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(
        () => setState(() => _isScrolled = _scrollController.offset > 150));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              // Show the CustomSliverAppbar only after scrolling down
              if (_isScrolled && MediaQuery.of(context).size.width > 800)
                CustomSliverAppbar(
                  title: '',
                  logoWithText: true,
                  children: [
                    Spacer(),
                    GestureDetector(
                        onTap: () => context.go(Routes.about),
                        child: _buildNavItem('About')),
                    const SizedBox(width: 40),
                    GestureDetector(
                        onTap: () => context.go(Routes.trainer),
                        child: _buildNavItem('Trainer')),
                    const SizedBox(width: 40),
                    GestureDetector(
                        onTap: () => context.go(Routes.courses),
                        child: _buildNavItem('Courses')),
                    const SizedBox(width: 40),
                    _buildContactButton(),
                  ],
                  // children: List.generate(
                  // controller.homeTitles.length,
                  // (index) => Padding(
                  //   padding: const EdgeInsets.only(right: 10),
                  //   child: Text(
                  //   controller.selectedHomeTitle.value,
                  //   style: textStyle1.copyWith(
                  //     color: controller.selectedHomeTitle.value ==
                  //         controller.homeTitles[index]
                  //       ? kPurple
                  //       : kBlack,
                  //   ),
                  //   ),
                  // ),
                  // ),
                ),
              SliverList.list(children: const [
                AppHeader(),
                HomeIntroSection(),
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
          if (_isScrolled) MoveToTop(onTap: _scrollToTop),
        ],
      ),
    );
  }

  Widget _buildNavItem(String text, {bool hasDropdown = false}) {
    return Row(children: [
      Text(
        text,
        style: const TextStyle(
          color: kWhite,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      if (hasDropdown) ...[
        const SizedBox(width: 6),
        const Icon(Icons.keyboard_arrow_down, color: kWhite, size: 20)
      ]
    ]);
  }

  Widget _buildContactButton() {
    return GestureDetector(
        onTap: () => context.go(Routes.contactUs),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: kWhite.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: kWhite,
                width: 1.5,
              ),
            ),
            child: const Text('Contact Us',
                style: TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600))));
  }
}

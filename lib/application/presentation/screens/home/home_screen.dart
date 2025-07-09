import 'package:edu_college/application/controller/home/home_controller.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/app_bar.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/career_support_and_placements_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/empovering_journey_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/enrollment_admission_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/home_intro_section.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/what_learn.dart';
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
      appBar: (MediaQuery.of(context).size.width > 768)
          ? null
          : AppBar(
              foregroundColor: kWhite,
              backgroundColor: const Color(0xFF8A63D2),
              title: const Text(
                'eduGuardian',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              actions: [],
            ),
      drawer: (MediaQuery.of(context).size.width > 768)
          ? null
          : Container(
              color: kBlack.withOpacity(0.9),
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _navButtons(context, true),
                ),
              ),
            ),
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
                  children: _navButtons(context, false),
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
              SliverList.list(children: [
                if (MediaQuery.of(context).size.width > 768) const AppHeader(),
                const HomeIntroSection(),
                const WhyChooseUsSection(),
                const StatictsCountsSection(),
                const CareerSupportAndPlacementSection(),
                const EmpoveringJourneySection(),
                const EnrollmentAdmissionSection(),
                const OurProgramsSection(),
                const LearningSection(),
                const StudentFeedbackSection(),
                const CompanyFooterSection(),
              ])
            ],
          ),
          if (_isScrolled) MoveToTop(onTap: _scrollToTop),
        ],
      ),
    );
  }

  List<Widget> _navButtons(BuildContext context, bool isMobile) {
    final desktopNav = [
      const Spacer(),
      GestureDetector(
          onTap: () => context.go(Routes.about), child: _buildNavItem('About')),
      const SizedBox(width: 40),
      GestureDetector(
          onTap: () => context.go(Routes.courses),
          child: _buildNavItem('Courses')),
      const SizedBox(width: 40),
      _buildContactButton(),
    ];

    final mobileNav = [
      SizedBox(height: 50, width: 50, child: Image.asset(eduGuardianLogo)),
      kHeight30,
      ListTile(
        leading: const Icon(Icons.info_outline, color: kPurple),
        title: _buildNavItem('About'),
        onTap: () => context.go(Routes.about),
      ),
      kHeight10,
      ListTile(
        leading: const Icon(Icons.school_outlined, color: kPurple),
        title: _buildNavItem('Courses'),
        onTap: () => context.go(Routes.courses),
      ),
      kHeight10,
      ListTile(
        leading: const Icon(Icons.call_outlined, color: kPurple),
        title: _buildNavItem('Contact Us'),
        onTap: () => context.go(Routes.contactUs),
      ),
    ];

    return isMobile ? mobileNav : desktopNav;
  }

  Widget _buildNavItem(String text, {bool hasDropdown = false}) {
    return Row(children: [
      Text(
        text,
        style: const TextStyle(
          color: kPurple,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      if (hasDropdown) ...[
        const SizedBox(width: 6),
        const Icon(Icons.keyboard_arrow_down, color: kPurple, size: 20)
      ]
    ]);
  }

  Widget _buildContactButton() {
    return GestureDetector(
        onTap: () => context.go(Routes.contactUs),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: kPurple.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: kPurple,
                width: 1.5,
              ),
            ),
            child: const Text('Contact Us',
                style: TextStyle(
                    color: kPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w600))));
  }
}

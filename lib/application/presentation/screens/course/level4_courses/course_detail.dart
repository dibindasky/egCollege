import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/screens/course/level4_courses/level4_course.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/course_mini_des.dart';
import 'package:edu_college/application/presentation/screens/course/widgets/desktop_view.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Level4CourseDetailView extends StatefulWidget {
  final OTHMDiploma course;
  final String? id;

  const Level4CourseDetailView({
    super.key,
    required this.course,
    this.id,
  });

  @override
  State<Level4CourseDetailView> createState() => _Level4CourseDetailViewState();
}

class _Level4CourseDetailViewState extends State<Level4CourseDetailView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 768;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => Get.find<CourseController>()
          .getLevel4SingleCourse(id: widget.id ?? '', course: widget.course),
    );
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(isMobile ? 10 : 80),
        child: Obx(
          () => Get.find<CourseController>().courseLEvel4DetailLoading.value
              ? const Center(child: CircularProgressIndicator())
              : CustomScrollView(
                  slivers: [
                    SliverList.list(children: [
                      DesktopView(
                          image: widget.course.image ?? "",
                          text: widget.course.courseName ?? "",
                          halfContiner: CourcseMiniDescription(
                              courseSlug: '',
                              courseId: "",
                              course: widget.course.courseName ?? '',
                              description: widget.course.description ?? "")),
                      kHeight30,
                      _buildContent()
                    ])
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        _buildQuickStats(),
        kHeight20,
        _buildTabSection(),
      ],
    );
  }

  Widget _buildQuickStats() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 600;
          return isWideScreen
              ? Row(
                  children: [
                    Expanded(
                        child: _buildStatItem(
                            'Credits', '${widget.course.totalCredits}')),
                    Expanded(
                        child: _buildStatItem(
                            'Units', '${widget.course.mandatoryUnits}')),
                    Expanded(
                        child: _buildStatItem(
                            'GLH', '${widget.course.guidedLearningHours}')),
                    Expanded(
                        child: _buildStatItem(
                            'TQT', '${widget.course.totalQualificationTime}')),
                  ],
                )
              : GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: [
                      _buildStatItem(
                          'Credits', '${widget.course.totalCredits}'),
                      _buildStatItem(
                          'Units', '${widget.course.mandatoryUnits}'),
                      _buildStatItem(
                          'GLH', '${widget.course.guidedLearningHours}'),
                      _buildStatItem(
                          'TQT', '${widget.course.totalQualificationTime}')
                    ]);
        }));
  }

  Widget _buildStatItem(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kPurple,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey..withOpacity(.6),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // isScrollable: true,
              labelColor: kPurple.withOpacity(.5),
              unselectedLabelColor: Colors.grey..withOpacity(.6),
              indicatorColor: kPurple.withOpacity(.5),
              indicatorWeight: 3,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              tabs: const [
                Tab(text: 'Overview'),
                Tab(text: 'Units'),
                Tab(text: 'Careers'),
                Tab(text: 'Requirements'),
                Tab(text: 'Assessment'),
              ],
            ),
          ),
          SizedBox(
            height: 600,
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildOverviewTab(),
                _buildUnitsTab(),
                _buildCareersTab(),
                _buildRequirementsTab(),
                _buildAssessmentTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewTab() {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Description'),
          Text(
            widget.course.description ?? "",
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Objective'),
          Text(
            widget.course.objective ?? "",
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle('Key Skills'),
          _buildSkillsGrid(),
        ],
      ),
    );
  }

  Widget _buildUnitsTab() {
    return ListView.builder(
      // padding: const EdgeInsets.all(16),
      itemCount: widget.course.units?.length,
      itemBuilder: (context, index) {
        final unit = widget.course.units?[index];
        return _buildUnitCard(unit);
      },
    );
  }

  Widget _buildUnitCard(Unit? unit) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  unit?.unitId ?? '',
                  style: TextStyle(
                    color: kPurple.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      unit?.unitName ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${unit?.credits} Credits • ${unit?.guidedLearningHours} GLH',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey..withOpacity(.6),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            unit?.description ?? "",
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          ExpansionTile(
            title: const Text(
              'Learning Outcomes',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding: const EdgeInsets.only(left: 16),
            children: (unit?.learningOutcomes ?? []).map((outcome) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(top: 8, right: 12),
                      decoration: BoxDecoration(
                        color: kPurple..withOpacity(.6),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        outcome,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.4,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildCareersTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Career Opportunities'),
          _buildCareerGrid(),
          const SizedBox(height: 24),
          _buildSectionTitle('Progression Pathways'),
          _buildProgressionList(),
        ],
      ),
    );
  }

  Widget _buildCareerGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 6,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: widget.course.careerOpportunities?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: kPurple.withOpacity(.2)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.work_outline,
                    color: kPurple.withOpacity(.6),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.course.careerOpportunities?[index] ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kBlack,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildProgressionList() {
    return Column(
      children: (widget.course.entryRequirements ?? []).map((pathway) {
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.purple.shade200),
          ),
          child: Row(
            children: [
              Icon(
                Icons.arrow_forward,
                color: Colors.purple..withOpacity(.6),
                size: 20,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  pathway,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kBlack,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildRequirementsTab() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildSectionTitle('Entry Requirements'),
          Column(
              children:
                  (widget.course.entryRequirements ?? []).map((requirement) {
            return Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kPurple.withOpacity(.1)),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: kPurple..withOpacity(.6),
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                          child: Text(requirement,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: kBlack)))
                    ]));
          }).toList())
        ]));
  }

  Widget _buildAssessmentTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Assessment Method'),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kPurple.withOpacity(.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: kPurple.withOpacity(.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.assessment,
                      color: kPurple..withOpacity(.6),
                      size: 24,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      widget.course.assessmentMethod?.type ?? "",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPurple.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  widget.course.assessmentMethod?.description ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildSectionTitle('Assessment Methods'),
          Column(
            children:
                (widget.course.assessmentMethod?.methods ?? []).map((method) {
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment_outlined,
                      color: Colors.grey..withOpacity(.6),
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        method,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 6,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: widget.course.keySkills?.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: kPurple.withOpacity(.2)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    color: kPurple..withOpacity(.6),
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.course.keySkills?[index] ?? '',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kPurple.withOpacity(.5),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}

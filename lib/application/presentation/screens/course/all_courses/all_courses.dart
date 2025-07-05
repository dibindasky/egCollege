import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_info.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_list_builder.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/course_sorting_chips.dart';
import 'package:edu_college/application/presentation/screens/course/all_courses/widgets/sorting_desktop.dart';
import 'package:edu_college/application/presentation/screens/home/widgets/footer.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/appbar/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({super.key});

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
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

  @override
  Widget build(BuildContext context) => Scaffold(
          body: CustomScrollView(controller: _scrollController, slivers: [
        const CustomSliverAppbar(
          title: 'All Courses',
        ),
        SliverList.list(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (MediaQuery.of(context).size.width > 1000) kWidth10,
            if (MediaQuery.of(context).size.width > 1000)
              const SortingSection(),
            Expanded(
                // flex: 3,
                child: Column(children: [
              kHeight10,
              const CourseInfoWidget(),
              kHeight10,
              MediaQuery.of(context).size.width < 1000
                  ? const CourseSortingChips()
                  : kEmpty,
              kHeight10,
              const CourseListBuilder(),
              const CompanyFooterSection()
            ]))
          ])
        ])
      ]));
}

import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/utils/skelton/skelton.dart';
import 'package:edu_college/application/presentation/widgets/background_image_hover.dart';
import 'package:edu_college/application/presentation/widgets/cource_card.dart';
import 'package:edu_college/application/presentation/widgets/custom_grid_builder.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CourceBuilder extends StatelessWidget {
  final String? title;
  final String? description;
  final int? length;

  const CourceBuilder({super.key, this.title, this.description, this.length});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final isMobile = MediaQuery.of(context).size.width < 768;
    return LayoutBuilder(builder: (context, constraints) {
      int crossAxisCount;
      double childAspectRatio;
      if (constraints.maxWidth > 1200) {
        // Desktop
        crossAxisCount = 4;
        childAspectRatio = .7;
      } else if (constraints.maxWidth > 1100) {
        crossAxisCount = 3;
        childAspectRatio = .7;
      } else if (constraints.maxWidth > 1000) {
        crossAxisCount = 3;
        childAspectRatio = .6;
      } else if (constraints.maxWidth > 950) {
        crossAxisCount = 3;
        childAspectRatio = .6;
      } else if (constraints.maxWidth > 900) {
        crossAxisCount = 3;
        childAspectRatio = .5;
      } else if (constraints.maxWidth > 800) {
        crossAxisCount = 3;
        childAspectRatio = .44;
      } else if (constraints.maxWidth > 750) {
        crossAxisCount = 2;
        childAspectRatio = .57;
      } else if (constraints.maxWidth > 670) {
        crossAxisCount = 2;
        childAspectRatio = .55;
      } else if (constraints.maxWidth > 600) {
        crossAxisCount = 2;
        childAspectRatio = .5;
      } else if (constraints.maxWidth > 550) {
        crossAxisCount = 2;
        childAspectRatio = .4;
      } else if (constraints.maxWidth > 500) {
        crossAxisCount = 2;
        childAspectRatio = .32;
      } else if (constraints.maxWidth > 450) {
        crossAxisCount = 1;
        childAspectRatio = .7;
      } else if (constraints.maxWidth > 400) {
        crossAxisCount = 1;
        childAspectRatio = .7;
      } else {
        crossAxisCount = 1;
        childAspectRatio = .6;
      }
      return Obx(() {
        if (courseController.isloading.value) {
          return GridvewShimmerLoading(itemCount: length ?? 4);
        }
        if (courseController.allCourses.isEmpty) kEmpty;
        return Container(
            padding: EdgeInsets.all(isMobile ? 10 : 80),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              title != null
                  ? SlideUpFadeInOnScroll(
                      direction: SlideDirection.bottom,
                      child: Text(title!,
                          style: textHeadStyle1.copyWith(
                              color: kBlack, fontSize: 20)),
                    )
                  : kEmpty,
              kHeight10,
              description != null
                  ? SlideUpFadeInOnScroll(
                      direction: SlideDirection.bottom,
                      child: Text(description!, style: textStyle1))
                  : kEmpty,
              kHeight30,
              CustomGriDView(
                  crossAxisSpacing: 1.3,
                  childAspectRatio: childAspectRatio,
                  crossAxisCount: crossAxisCount,
                  length: length ?? 4,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () => context.go(
                              Routes.courseDetail.replaceFirst(
                                  ":id", courseController.allCourses[index].id ?? ''),
                              extra: {
                                'course': courseController.allCourses[index],
                                'serviceName': ''
                              }),
                      child: NewCourseCard(
                          index: index,
                          course: ServiceFeatureModel(
                              description: '',
                              title:
                                  courseController.allCourses[index].name ?? '',
                              imagePath:
                                  courseController.allCourses[index].image ?? ''),
                          constraints: constraints)))
              //  CourceCard(
              //     course: ServiceFeatureModel(
              //         description: '',
              //         title:
              //             courseController.allCourses[index].name ?? '',
              //         imagePath:
              //             courseController.allCourses[index].image ??
              //                 ''),
              //     constraints: constraints)))
            ]));
      });
    });
  }
}

class NewCourseCard extends StatefulWidget {
  const NewCourseCard(
      {super.key,
      required this.course,
      required this.constraints,
      required this.index});

  final ServiceFeatureModel course;
  final BoxConstraints constraints;
  final int index;

  @override
  State<NewCourseCard> createState() => _NewCourseCardState();
}

class _NewCourseCardState extends State<NewCourseCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedScale(
          scale: isHovered ? 1.03 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 4))
                ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 200,
                      child: BackgroundImage(
                          image: widget.course.imagePath,
                          isHovered: isHovered)),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SlideUpFadeInOnScroll(
                              direction: SlideDirection.left,
                              child: Text(widget.course.title,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      height: 1.3),
                                  maxLines: 3),
                            ),
                            kHeight20,
                            Row(children: [
                              const Text('4.7',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                          0xFFB45309) // Orange color for rating
                                      )),
                              kWidth10,
                              // Stars
                              SlideUpFadeInOnScroll(
                                  direction: SlideDirection.left,
                                  child: Row(children: [
                                    for (int i = 0; i < 4; i++)
                                      const Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Color(0xFFB45309),
                                      ),
                                    const Icon(Icons.star_half,
                                        size: 16, color: Color(0xFFB45309))
                                  ])),
                              kWidth10,
                              Text('(373,850)',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[600]))
                            ]),
                            kHeight15,

                            // Price and Bestseller
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  kWidth10,
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFDCFDF4),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Text('Bestseller',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF065F46))))
                                ])
                          ]))
                ]),
          ),
        ));
  }
}

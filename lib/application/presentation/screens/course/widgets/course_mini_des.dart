import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class CourcseMiniDescription extends StatelessWidget {
  const CourcseMiniDescription(
      {super.key,
      required this.description,
      required this.course,
      required this.courseId,
      required this.courseSlug});

  final String description;
  final String course;
  final String courseId;
  final String courseSlug;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: SlideUpFadeInOnScroll(
            direction: SlideDirection.left,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18, top: 30, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      Text(course,
                          style: textHeadStyle1.copyWith(
                              color: kWhite, fontSize: 20)),
                      kHeight5,
                      Text(description,
                          style: textStyle1.copyWith(color: kWhite),
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis),
                      const Spacer(),
                    ]))));
  }
}

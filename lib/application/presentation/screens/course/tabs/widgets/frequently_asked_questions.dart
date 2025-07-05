import 'package:edu_college/application/controller/course/course_controller.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/faq.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions({super.key, this.faqs});

  final List<Faq>? faqs;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        kHeight10,
        Text('Frequently asked questions',
            style: textHeadStyle1.copyWith(
              fontWeight: FontWeight.w500,
            )),
        kHeight5,
        ...List.generate(faqs?.length ?? 0, (index) {
          final courseController = Get.find<CourseController>();
          return CustomExpansionTile(
              isBorder: true,
              marginTop: 4,
              expansionColor: mediumPurple.withOpacity(0.5),
              whileTap: (value) => courseController.changeQuestionArrow(index),
              child: Row(children: [
                Expanded(
                    child: Text(faqs?[index].question ?? '',
                        maxLines: 2, style: textStyle1)),
                Obx(() => Icon(
                    courseController.selectedQuestionArrow.value == index
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down))
              ]),
              children: [
                Text(faqs?[index].answer ?? '', style: textThinStyle1)
              ]);
        }),
        kHeight10
      ]));
}

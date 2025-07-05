import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/briefoverview.dart';
import 'package:flutter/material.dart';

class OverViewContent extends StatelessWidget {
  const OverViewContent({super.key, this.briefoverview});

  final Briefoverview? briefoverview;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return isDesktop
        ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                child: SlideUpFadeInOnScroll(
              direction: SlideDirection.left,
              child: ContainerWidget(
                  verticalMargin: 10,
                  horizontalMargin: 10,
                  verticalPadding: 10,
                  children: [
                    kHeight20,
                    Text(
                        'A deeply engaging online program from a top-tier university powerhouse.',
                        style: textHeadStyle1.copyWith(
                            fontWeight: FontWeight.w500)),
                    kHeight15,
                    Text(briefoverview?.description ?? '', style: textStyle1)
                  ]),
            )),
            Expanded(
                child: SlideUpFadeInOnScroll(
              direction: SlideDirection.right,
              child: ContainerWidget(
                  verticalMargin: 10,
                  horizontalMargin: 10,
                  verticalPadding: 10,
                  children: [
                    kHeight20,
                    SlideUpFadeInOnScroll(
                      child: Text('What\'s in this degree program?',
                          style: textHeadStyle1.copyWith(
                              fontWeight: FontWeight.w500)),
                    ),
                    kHeight5,
                    BullletPoints(texts: briefoverview?.details ?? []),
                  ]),
            ))
          ])
        : SlideUpFadeInOnScroll(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            kHeight15,
            Text(
                'A deeply engaging online program from a top-tier university powerhouse.',
                style: textStyle1.copyWith(
                    fontWeight: FontWeight.w500, fontSize: 13)),
            kHeight5,
            Text(briefoverview?.description ?? '', style: textStyle1),
            kHeight5,
            Text('What\'s in this degree program?',
                style: textStyle1.copyWith(fontWeight: FontWeight.w500)),
            kHeight5,
            BullletPoints(texts: briefoverview?.details ?? []),
            kHeight10
          ]));
  }
}

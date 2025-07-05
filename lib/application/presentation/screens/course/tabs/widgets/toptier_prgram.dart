import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class TopTierProgram extends StatelessWidget {
  const TopTierProgram({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return SlideUpFadeInOnScroll(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isDesktop
              ? [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(
                        child: ContainerWidget(
                            verticalMargin: 10,
                            horizontalMargin: 10,
                            verticalPadding: 10,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            backGroundColor: kLightCyan,
                            children: [
                          kHeight5,
                          SlideUpFadeInOnScroll(
                            direction: SlideDirection.top,
                            child: Text(
                                'Total tuition is affordable and competitive.',
                                style: textHeadStyle1),
                          ),
                          kHeight5,
                          Text(
                              'For many programs, tuition costs can exceed significant amounts. With our program, you can save substantially on your total cost while pursuing your education from a leading institution.',
                              style: textStyle1),
                          kHeight5
                        ])),
                    kWidth10,
                    Expanded(
                        child: ContainerWidget(
                            verticalMargin: 10,
                            horizontalMargin: 10,
                            verticalPadding: 10,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            backGroundColor: mediumPurple,
                            children: [
                          kHeight5,
                          SlideUpFadeInOnScroll(
                              direction: SlideDirection.top,
                              child:
                                  Text('Pay-as-you-go', style: textHeadStyle1)),
                          kHeight5,
                          Text(
                              'You pay tuition only for courses you\'re enrolled in. If a scheduling conflict arises, you are free to take a term off and won\'t be charged during that term.',
                              style: textStyle1),
                          kHeight5
                        ])),
                    kWidth10,
                    Expanded(
                        child: ContainerWidget(
                            verticalMargin: 10,
                            horizontalMargin: 10,
                            verticalPadding: 10,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            backGroundColor: kPaleBlue,
                            children: [
                          kHeight5,
                          SlideUpFadeInOnScroll(
                              direction: SlideDirection.top,
                              child: Text('Financial aid & scholarships',
                                  style: textHeadStyle1)),
                          kHeight5,
                          Text(
                              'Our institution has partnered with online learning platforms to offer a limited number of competitive scholarships covering 70% of tuition for select students. U.S. residents may also qualify for additional student aid.',
                              style: textStyle1),
                          kHeight5
                        ]))
                  ])
                ]
              : [
                  kHeight10,
                  Text(
                    'A Top-Tier Program at an Affordable Cost',
                    style: textStyle1.copyWith(
                        fontWeight: FontWeight.w800, fontSize: 14),
                  ),
                  kHeight10,
                  ContainerWidget(
                      backGroundColor: kLightCyan,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //backGroundColor: kGreyLight,
                      children: [
                        kHeight5,
                        Text('Total tuition is affordable and competitive.',
                            style: textStyle1.copyWith(
                                fontWeight: FontWeight.w700)),
                        kHeight5,
                        Text(
                            'For many programs, tuition costs can exceed significant amounts. With our program, you can save substantially on your total cost while pursuing your education from a leading institution.',
                            style: textStyle1),
                        kHeight5
                      ]),
                  kHeight10,
                  ContainerWidget(
                      backGroundColor: kPaleBlue,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // backGroundColor: kGreyLight,
                      children: [
                        kHeight5,
                        Text('Pay-as-you-go',
                            style: textStyle1.copyWith(
                                fontWeight: FontWeight.w700)),
                        kHeight5,
                        Text(
                            'You pay tuition only for courses you\'re enrolled in. If a scheduling conflict arises, you are free to take a term off and won\'t be charged during that term.',
                            style: textStyle1),
                        kHeight5
                      ]),
                  kHeight10,
                  ContainerWidget(
                      backGroundColor: kCornsilk,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //backGroundColor: kGreyLight,
                      children: [
                        kHeight5,
                        Text('Financial aid & scholarships',
                            style: textStyle1.copyWith(
                                fontWeight: FontWeight.w700)),
                        kHeight5,
                        Text(
                            'Our institution has partnered with online learning platforms to offer a limited number of competitive scholarships covering 70% of tuition for select students. U.S. residents may also qualify for additional student aid.',
                            style: textStyle1),
                        kHeight5
                      ]),
                  kHeight10
                ]),
    );
  }
}

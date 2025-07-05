import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/jobrecommendation.dart';
import 'package:flutter/material.dart';

class Careers extends StatelessWidget {
  const Careers(
      {super.key,
      this.jobrecommendation,
      this.stepahead,
      this.jobdemand,
      this.advancecareer,
      this.careersoverview});

  final List<Jobrecommendation>? jobrecommendation;
  final String? stepahead;
  final String? jobdemand;
  final String? advancecareer;
  final String? careersoverview;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return isDesktop
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              kWidth10,
              Expanded(
                  child: SlideUpFadeInOnScroll(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    kHeight10,
                    Text('Careers', style: textHeadStyle1),
                    ContainerWidget(verticalMargin: 5, children: [
                      kHeight5,
                      Text(careersoverview ?? '', style: textStyle1),
                      kHeight5,
                    ])
                  ]))),
              kWidth15,
              Expanded(
                  child: SlideUpFadeInOnScroll(
                direction: SlideDirection.right,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      Text('Career growth opportunities',
                          style: textHeadStyle1),
                      ContainerWidget(verticalMargin: 5, children: [
                        kHeight5,
                        Text('Take a Steap ahead',
                            style: textStyle1.copyWith()),
                        kHeight10,
                        Text(
                          stepahead ?? '',
                          style: textStyle1,
                        ),
                        kHeight10
                      ]),
                      ContainerWidget(verticalMargin: 5, children: [
                        kHeight5,
                        Text('Advance your Career',
                            style: textStyle1.copyWith()),
                        kHeight10,
                        Text(
                          advancecareer ?? '',
                          style: textStyle1,
                        ),
                        kHeight10
                      ]),
                      ContainerWidget(verticalMargin: 5, children: [
                        kHeight5,
                        Text('Job Reccommendations',
                            style: textStyle1.copyWith()),
                        kHeight10,
                        Text(
                          jobdemand ?? '',
                          style: textStyle1,
                        ),
                        kHeight10
                      ])
                    ]),
              )),
              kWidth10
            ]),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SlideUpFadeInOnScroll(
                  child: Column(children: [
                    Text(
                        'Below are a few highlights of how you can advance your career with the program.',
                        style: textThinStyle1.copyWith(
                          fontWeight: FontWeight.w500,
                        )),
                    kHeight5,
                    const BullletPoints(
                        pointStyle: Icon(Icons.done_all_sharp, size: 17),
                        texts: [
                          ' Industry-focused curriculum:',
                          'Network with alumni worldwide:',
                          'Access to exclusive career services and resources:',
                          'Flexible learning options to fit your schedule:'
                        ],
                        subTexts: [
                          'The industry-focused curriculum integrates real-world case studies and practical projects to prepare students with relevant skills and knowledge for today\'s competitive business environment',
                          'The industry-focused curriculum integrates real-world case studies and practical projects to prepare students with relevant skills and knowledge for today\'s competitive business environment',
                          'Access exclusive career services and resources to enhance job placement readiness and career advancement opportunities',
                          'Enjoy flexible learning options designed to accommodate your schedule and maximize educational convenience. Appications for Fall 2024 are now open.'
                        ])
                  ]),
                ))
          ])
        : SlideUpFadeInOnScroll(
            direction: SlideDirection.left,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ContainerWidget(horizontalMargin: 10, children: [
                kHeight10,
                Text('Careers',
                    style: textStyle1.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 15)),
                kHeight5,
                Text(careersoverview ?? '', style: textStyle1),
                kHeight5,
                Text(
                    'Below are a few highlights of how you can advance your career with the program.',
                    style: textStyle1.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 13)),
                kHeight5,
                const BullletPoints(
                    pointStyle: Icon(Icons.done_all_sharp, size: 17),
                    texts: [
                      ' Industry-focused curriculum:',
                      'Network with alumni worldwide:',
                      'Access to exclusive career services and resources:',
                      'Flexible learning options to fit your schedule:'
                    ],
                    subTexts: [
                      'The industry-focused curriculum integrates real-world case studies and practical projects to prepare students with relevant skills and knowledge for today\'s competitive business environment',
                      'The industry-focused curriculum integrates real-world case studies and practical projects to prepare students with relevant skills and knowledge for today\'s competitive business environment',
                      'Access exclusive career services and resources to enhance job placement readiness and career advancement opportunities',
                      'Enjoy flexible learning options designed to accommodate your schedule and maximize educational convenience. Appications for Fall 2024 are now open.'
                    ]),
                kHeight10
              ]),
              kHeight10,
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Career growth opportunities',
                      style: textHeadStyle1)),
              ContainerWidget(
                  horizontalMargin: 10,
                  verticalMargin: 5,
                  children: [
                    kHeight5,
                    Text('Take a Steap ahead', style: textHeadStyle1),
                    kHeight10,
                    Text(stepahead ?? ''),
                    kHeight10
                  ]),
              ContainerWidget(
                  horizontalMargin: 10,
                  verticalMargin: 5,
                  children: [
                    kHeight5,
                    Text('Advance your Career', style: textHeadStyle1),
                    kHeight10,
                    Text(advancecareer ?? ''),
                    kHeight10
                  ]),
              ContainerWidget(
                  verticalMargin: 5,
                  horizontalMargin: 10,
                  children: [
                    kHeight5,
                    Text('Job Reccommendations', style: textHeadStyle1),
                    kHeight10,
                    Text(jobdemand ?? ''),
                    kHeight10
                  ]),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BullletPoints(
                      texts: jobrecommendation
                              ?.map((e) => e.title ?? '')
                              .toList() ??
                          [],
                      subTexts: jobrecommendation
                              ?.map((e) => e.description ?? '')
                              .toList() ??
                          [])),
              kHeight10
            ]),
          );
  }
}

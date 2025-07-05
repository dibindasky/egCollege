import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/enum/enum.dart';
import 'package:edu_college/application/presentation/widgets/container_image.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:flutter/material.dart';

class IsTheProgramRightForYou extends StatelessWidget {
  const IsTheProgramRightForYou({super.key, this.programInsight});

  final List<String>? programInsight;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return ContainerWidget(
        verticalMargin: 10,
        horizontalMargin: 10,
        verticalPadding: 10,
        children: isDesktop
            ? [
                SlideUpFadeInOnScroll(
                  direction: SlideDirection.right,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight10,
                        Text('Is the program right for you?',
                            style: textHeadStyle1),
                        Row(children: [
                          const Expanded(
                            child: ContainerImage(
                                fit: BoxFit.contain,
                                image: 'assets/dev/about22.png',
                                height: 450),
                          ),
                          Expanded(
                              child: Column(children: [
                            ...List.generate(
                                programInsight?.length ?? 0,
                                (index) => Text(programInsight?[index] ?? '',
                                    style: textStyle1))
                          ]))
                        ])
                      ]),
                )
              ]
            : [
                kHeight10,
                Text('Is the program right for you?', style: textHeadStyle1),
                kHeight10,
                Image.asset('assets/dev/about22.png',
                    height: 200, width: double.infinity),
                kHeight15,
                ...List.generate(
                    programInsight?.length ?? 0,
                    (index) =>
                        Text(programInsight?[index] ?? '', style: textStyle1)),
                kHeight10
              ]);
  }
}

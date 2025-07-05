import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/custom_expansion_tile.dart';
import 'package:edu_college/application/presentation/widgets/slide_effect.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/minimumrequirement.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/requireddocument.dart';
import 'package:flutter/material.dart';

class MinimumRequirementsAndRequiredDocuments extends StatelessWidget {
  const MinimumRequirementsAndRequiredDocuments(
      {super.key, this.minimumrequirements, this.requireddocuments});

  final List<Minimumrequirement>? minimumrequirements;
  final List<Requireddocument>? requireddocuments;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: isDesktop
            ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                    child: SlideUpFadeInOnScroll(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight10,
                        Text('Minimum requirements for the program?.',
                            style: textHeadStyle1),
                        ...List.generate(
                            minimumrequirements?.length ?? 0,
                            (index) => CustomExpansionTile(
                                    expansionColor: mediumPurple.withOpacity(0.5),
                                    marginTop: 10,
                                    isBorder: true,
                                    child: Row(children: [
                                      Text(
                                          minimumrequirements?[index].key ?? '',
                                          style: textStyle1),
                                      const Spacer(),
                                      const Icon(Icons.arrow_drop_down)
                                    ]),
                                    children: [
                                      Text(
                                          minimumrequirements?[index].value ??
                                              '',
                                          style: textThinStyle1)
                                    ]))
                      ]),
                )),
                kWidth20,
                Expanded(
                    child: SlideUpFadeInOnScroll(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                      kHeight10,
                      Text('Required Documents', style: textHeadStyle1),
                      ...List.generate(
                          requireddocuments?.length ?? 0,
                          (index) => CustomExpansionTile(
                                  expansionColor: mediumPurple.withOpacity(0.5),
                                  marginTop: 10,
                                  isBorder: true,
                                  child: Row(children: [
                                    Text(requireddocuments?[index].key ?? '',
                                        style: textStyle1),
                                    const Spacer(),
                                    const Icon(Icons.arrow_drop_down)
                                  ]),
                                  children: [
                                    Text(requireddocuments?[index].value ?? '')
                                  ]))
                    ])))
              ])
            : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Minimum requirements for the program?.',
                    style: textStyle1),
                ...List.generate(
                    minimumrequirements?.length ?? 0,
                    (index) => SlideUpFadeInOnScroll(
                          child: CustomExpansionTile(
                            expansionColor: mediumPurple.withOpacity(0.5),
                            marginTop: 10,
                            isBorder: true,
                            child: Row(children: [
                              Text(minimumrequirements?[index].key ?? '',
                                  style: textHeadStyle1),
                              const Spacer(),
                              const Icon(Icons.arrow_drop_down)
                            ]),
                            children: [
                              Text(minimumrequirements?[index].value ?? '')
                            ],
                          ),
                        )),
                kHeight10,
                Text('Required Documents', style: textHeadStyle1),
                ...List.generate(
                    requireddocuments?.length ?? 0,
                    (index) => SlideUpFadeInOnScroll(
                          child: CustomExpansionTile(
                              expansionColor: mediumPurple.withOpacity(0.5),
                              marginTop: 10,
                              isBorder: true,
                              child: Row(children: [
                                Text(requireddocuments?[index].key ?? '',
                                    style: textHeadStyle1),
                                const Spacer(),
                                const Icon(Icons.arrow_drop_down)
                              ]),
                              children: [
                                Text(requireddocuments?[index].value ?? '')
                              ]),
                        )),
                kHeight10
              ]));
  }
}

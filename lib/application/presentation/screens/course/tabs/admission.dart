import 'package:edu_college/application/presentation/screens/course/tabs/widgets/application_requirement.dart';
import 'package:edu_college/application/presentation/screens/course/tabs/widgets/minimumreqiurement_required_docs.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/minimumrequirement.dart';
import 'package:edu_college/domain/model/courses/get_all_couses/requireddocument.dart';
import 'package:flutter/material.dart';

class Adminssion extends StatelessWidget {
  const Adminssion(
      {super.key,
      this.requireddocuments,
      this.minimumrequirements,
      this.admissionOvervieweDescription});

  final String? admissionOvervieweDescription;
  final List<Requireddocument>? requireddocuments;
  final List<Minimumrequirement>? minimumrequirements;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      kHeight10,
      isDesktop
          ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  child: ContainerWidget(horizontalMargin: 10, children: [
                kHeight10,
                Text(admissionOvervieweDescription ?? '', style: textStyle1),
                kHeight10
              ])),
              Expanded(
                child: ApplicationRequirements(
                    requireddocuments: requireddocuments ?? []),
              )
            ])
          : Column(children: [
              ContainerWidget(horizontalMargin: 10, children: [
                kHeight10,
                Text(admissionOvervieweDescription ?? '', style: textStyle1),
                kHeight10
              ]),
              kHeight10,
              ApplicationRequirements(
                  requireddocuments: requireddocuments ?? []),
              kHeight10,
            ]),
      MinimumRequirementsAndRequiredDocuments(
          minimumrequirements: minimumrequirements,
          requireddocuments: requireddocuments)
    ]);
  }
}

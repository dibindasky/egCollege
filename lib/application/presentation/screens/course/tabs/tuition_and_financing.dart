import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/bullet_points.dart';
import 'package:edu_college/application/presentation/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class TuitionAndFinancing extends StatelessWidget {
  const TuitionAndFinancing({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 900;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      kHeight10,
      isDesktop
          ? const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(child: TuitionAndFinancingOverview()),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [kHeight15, SholarshipFinacingOpportunities()]))
            ])
          : kEmpty,
      isDesktop ? kEmpty : const TuitionAndFinancingOverview(),
      kHeight10,
      isDesktop ? kEmpty : const SholarshipFinacingOpportunities()
    ]);
  }
}

class TuitionAndFinancingOverview extends StatelessWidget {
  const TuitionAndFinancingOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final data = {
      "Total Tuition Fee:":
          "Complete 4 core specializations and also choose 2 additional specializations from a range of focus areas and electives.",
      "Scholarships Available:":
          "eG Academy offers a range of scholarships to support students based on academic merit, leadership qualities, and community involvement, providing financial assistance toward tuition fees.",
      "Payment Structure:":
          "The payment structure at eG Academy involves tuition fees structured per semester or academic year, with options for payment plans and potential financial aid assistance available.",
      "Flexible Payment Plans:":
          "eG Academy offers flexible payment plans to accommodate students' financial situations, allowing for installment payments of tuition fees over the course of the semester or academic year.",
      "Financial Aid Programs:":
          "eG Academy provides various financial aid programs, including scholarships, grants, and student loans, to assist eligible students in managing the costs of their education.",
      "Private Loans:":
          "eG Academy facilitates access to private loans through partnering financial institutions to help students cover educational expenses beyond scholarships and grants."
    };
    return Column(children: [
      ContainerWidget(horizontalMargin: 10, boxShadow: boxShadow3, children: [
        kHeight10,
        Text('Tuition & Financing', style: textHeadStyle1),
        kHeight5,
        Text(
            'Our courses have a competitive tuition fee structure designed to provide excellent value for your investment in education. We offer various financing options, including installment plans, scholarships, and financial aid, to help make our programs accessible to a diverse range of learners. Detailed information about tuition fees and available financing options will be provided during the application process. Additionally, we collaborate with financial institutions to offer student loans at favorable terms. Our dedicated support team is available to guide you through the financing options and help you find the best solution to suit your needs. Furthermore, we are committed to transparency and affordability, ensuring that all students have access to the resources they need to pursue their educational goals without financial barriers.',
            style: textStyle1),
        BullletPoints(
            texts: data.entries.map((e) => e.key).toList(),
            subTexts: data.entries.map((e) => e.value).toList()),
        kHeight10
      ]),
      kHeight10
    ]);
  }
}

class SholarshipFinacingOpportunities extends StatelessWidget {
  const SholarshipFinacingOpportunities({super.key});

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('Scholarship & Financing Opportunities',
                style: textHeadStyle1)),
        kHeight5,
        ...List.generate(3, (index) {
          final map = {
            "Scholarships Opportunities":
                "Tuition costs for many programs can exceed substantial amounts. Our program offers significant savings while pursuing your education from a leading institution.",
            "Employer Tuition Reimbursement":
                "eG Academy offers a variety of scholarship opportunities to eligible students based on academic achievement, leadership potential, and financial need, aiming to support their educational goals and reduce tuition costs.",
            "University Payment Plan":
                "eG Academy offers a university payment plan that allows students to spread out tuition payments over the course of the semester or academic year, providing flexibility in managing educational expenses."
          };
          return ContainerWidget(
              verticalMargin: 4,
              horizontalMargin: 12,
              boxShadow: boxShadow3,
              children: [
                kHeight10,
                Text(map.keys.toList()[index], style: textStyle1),
                kHeight5,
                Text(map.values.toList()[index], style: textThinStyle1),
                kHeight10
              ]);
        }),
        kHeight10
      ]);
}

import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CareerSupportAndPlacementSection extends StatelessWidget {
  const CareerSupportAndPlacementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isDesktop = constraints.maxWidth >= 800;
      return Container(
          padding: EdgeInsets.symmetric(
              horizontal: isDesktop ? 50 : 20, vertical: 100),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            kPurple.withOpacity(0.2),
            kPurple.withOpacity(0.12),
            kPurple.withOpacity(0.1),
            kWhite
          ])),
          child: isDesktop
              ? const Row(
                  children: [
                    Expanded(child: _GuidanceInfDetail()),
                    kWidth20,
                    Expanded(child: _BuildImageSection())
                  ],
                )
              : const Column(children: [
                  _BuildImageSection(),
                  kHeight15,
                  _GuidanceInfDetail()
                ]));
    });
  }
}

class _GuidanceInfDetail extends StatelessWidget {
  const _GuidanceInfDetail();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: kPurple.withOpacity(0.2), borderRadius: kRadius50),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Text(
            'CAREER SUPPORT & eG JOBS FACILITIES',
            style: textThinStyle1.copyWith(color: kPurple),
          ),
        ),
        kHeight10,
        RichText(
          text: TextSpan(
            style: textMainHead.copyWith(color: kBlack),
            children: [
              const TextSpan(text: 'Shape Your Future with '),
              TextSpan(
                text: 'Internship & Job Guidance',
                style: textMainHead.copyWith(
                    color: kPurple, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        kHeight10,
        Text(
          '''At eduGuardian, your success doesn't stop at the classroom. We offer career-focused support to help you gain real-world experience and transition confidently into the workforce.''',
          style: textThinStyle1.copyWith(
            color: kGrey,
          ),
        ),
        kHeight10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('💼', style: TextStyle(fontSize: 20)),
                kWidth10,
                Expanded(
                  child: Text(
                    'Our support includes:',
                    style: textStyle1.copyWith(
                        color: kBlack, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            kHeight10,
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Professional CV & resume preparation',
                      style: textThinStyle1),
                  const SizedBox(height: 6),
                  Text('• Interview coaching & personal branding',
                      style: textThinStyle1),
                  const SizedBox(height: 6),
                  Text(
                      '• Access to 100+ active internship and job partners across the UAE & Singapore',
                      style: textThinStyle1),
                ],
              ),
            ),
          ],
        ),
        // kHeight10,
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Column(
        //       children: [
        //         Text(
        //           '83%',
        //           style: textMainHead,
        //         ),
        //         Text(
        //           'Students Placed',
        //           style: textStyle1,
        //         ),
        //       ],
        //     ),
        //     Container(
        //       margin: const EdgeInsets.symmetric(horizontal: 20),
        //       height: 50,
        //       width: 1,
        //       color: kBlack,
        //     ),
        //     Column(
        //       children: [
        //         Text(
        //           '100+',
        //           style: textMainHead,
        //         ),
        //         Text(
        //           'Internship partners',
        //           style: textStyle1,
        //         ),
        //       ],
        //     )
        //   ],
        // ),
        kHeight20,
      ],
    );
  }
}

class _BuildImageSection extends StatelessWidget {
  const _BuildImageSection();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Bounce(
          infinite: true,
          duration: const Duration(seconds: 20),
          child: Image.asset(
            studentLearning,
          ),
        ),
        // Positioned(
        //   top: 40,
        //   left: 20,
        //   child: ShakeX(
        //     from: 5,
        //     duration: const Duration(seconds: 20),
        //     child: ShakeY(
        //       from: 5,
        //       duration: const Duration(seconds: 20),
        //       child: Container(
        //         padding:
        //             const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        //         decoration: BoxDecoration(
        //             color: kGreen.withOpacity(.4),
        //             border: Border.all(color: kWhite),
        //             borderRadius: BorderRadius.circular(12),
        //             boxShadow: boxShadow3),
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 const Icon(
        //                   Icons.star,
        //                   color: kWhite,
        //                   size: 30,
        //                 ),
        //                 kWidth10,
        //                 Text(
        //                   '5+',
        //                   style: textHeadStyle1.copyWith(color: kWhite),
        //                 ),
        //               ],
        //             ),
        //             Text(
        //               'Years of Experience',
        //               style: textThinStyle1.copyWith(
        //                 color: kBlack.withOpacity(0.6),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}

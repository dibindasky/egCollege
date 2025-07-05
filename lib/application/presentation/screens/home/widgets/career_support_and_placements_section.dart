import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class CareerSupportAndPlacementSection extends StatelessWidget {
  const CareerSupportAndPlacementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isDesktop = constraints.maxWidth >= 800;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 50 : 20,vertical: 100),
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
            kPurple.withOpacity(0.3),
            kPurple.withOpacity(0.2),
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
              : const Column(
                  children: [
                    _BuildImageSection(),
                    kHeight15,
                    _GuidanceInfDetail(),
                  ],
                ),
        );
      },
    );
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
            'CAREER SUPPORT & PLACEMENTS',
            style: textThinStyle1.copyWith(color: kPurple),
          ),
        ),
        kHeight10,
        RichText(
          text: TextSpan(
            style: textMainHead.copyWith(color: kBlack),
            children: [
              const TextSpan(text: 'Launch Your Career with '),
              TextSpan(
                text: 'Placement Guidance',
                style: textMainHead.copyWith(
                    color: kPurple, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        kHeight10,
        Text(
          'EduGuardian supports students beyond the classroom with career-oriented placement guidance. Our team provides resume building, interview coaching, and access to top internship and job opportunities across the UAE.',
          style: textThinStyle1.copyWith(
            color: kGrey,
          ),
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '83%',
                  style: textMainHead,
                ),
                Text(
                  'Students Placed',
                  style: textStyle1,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: 1,
              color: kBlack,
            ),
            Column(
              children: [
                Text(
                  '100+',
                  style: textMainHead,
                ),
                Text(
                  'Internship partners',
                  style: textStyle1,
                ),
              ],
            )
          ],
        ),
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
            graduvatedStudentImg,
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          child: ShakeX(
            from: 5,
            duration: const Duration(seconds: 20),
            child: ShakeY(
              from: 5,
              duration: const Duration(seconds: 20),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    color: kPurple.withOpacity(.4),
                    border: Border.all(color: kWhite),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: boxShadow3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: kWhite,
                          size: 30,
                        ),
                        kWidth10,
                        Text(
                          '5+',
                          style: textHeadStyle1.copyWith(color: kWhite),
                        ),
                      ],
                    ),
                    Text(
                      'Years of Experience',
                      style: textThinStyle1.copyWith(
                        color: kBlack.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

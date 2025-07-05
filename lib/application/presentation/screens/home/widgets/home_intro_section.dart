import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/buttons/icon_with_text_button.dart';
import 'package:edu_college/application/presentation/widgets/ui_enhancers/spinner_animated_widget.dart';
import 'package:flutter/material.dart';

class HomeIntoSection extends StatelessWidget {
  const HomeIntoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return SizedBox(
        height: constrains.maxWidth < 800 ? 1000 : 600,
        width: double.infinity,
        child: Stack(
          children: [
            ..._homePageBackgroundAnimations,
            Container(
              height: constrains.maxWidth < 800 ? 1000 : 600,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kGrey.withOpacity(0.1),
                    kGrey.withOpacity(0.4),
                    kPurple.withOpacity(0.2),
                    kGrey.withOpacity(0.2)
                  ],
                ),
              ),
              padding: const EdgeInsets.only(left: 50),
              child: constrains.maxWidth < 800
                  ? const Column(
                      children: [
                        _HomeIntoSectionAnimations(),
                        kHeight20,
                        _HomeWelcomeSection(),
                      ],
                    )
                  : const Row(
                      children: [
                        _HomeWelcomeSection(),
                        kWidth20,
                        _HomeIntoSectionAnimations(),
                      ],
                    ),
            ),
          ],
        ),
      );
    });
  }

  List<Widget> get _homePageBackgroundAnimations {
    return [
      Positioned(
        top: -50,
        left: -100,
        child: Bounce(
          infinite: true,
          duration: const Duration(seconds: 20),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  kWhite.withOpacity(0.1),
                  kPurple.withOpacity(0.1),
                ])),
          ),
        ),
      ),
      Positioned(
        top: 150,
        left: 200,
        child: Bounce(
          duration: const Duration(seconds: 40),
          child: Spin(
            duration: const Duration(seconds: 40),
            infinite: true,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  gradient: LinearGradient(colors: [
                    kWhite.withOpacity(0.1),
                    kPurple.withOpacity(0.1),
                  ])),
            ),
          ),
        ),
      ),
    ];
  }
}

class _HomeWelcomeSection extends StatelessWidget {
  const _HomeWelcomeSection();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              style: textMainHead.copyWith(color: kBlack),
              children: [
                const TextSpan(text: 'Welcome to '),
                TextSpan(
                  text: 'EduGuardian',
                  style: textMainHead.copyWith(
                      color: kPurple, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          kHeight30,
          Text(
            'Achieving Excellence Together',
            style: textMainHead.copyWith(color: kBlack),
          ),
          kHeight10,
          AnimatedArrowTextButton(
            onPressed: () {},
            text: "Get Started",
          )
        ],
      ),
    );
  }
}

class _HomeIntoSectionAnimations extends StatelessWidget {
  const _HomeIntoSectionAnimations();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            const Positioned(
                top: 80,
                left: 20,
                child: SpinnerUIEnhanceWidget(
                  height: 400,
                  width: 400,
                  duration: Duration(seconds: 90),
                )),
            Positioned(
              right: -300,
              top: 0,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Transform.rotate(
                  angle: 45 * 3.1415926535 / 180,
                  child: Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: kRadius10,
                        gradient: const LinearGradient(
                            colors: [kPurple, kBlack, kPurple])),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: FadeInRight(child: Image.asset(graduvatedStudentImg))),
            Positioned(
              top: 40,
              right: 20,
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
                      color: kWhite.withOpacity(.4),
                      border: Border.all(color: kWhite),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.people,
                              color: kWhite,
                              size: 30,
                            ),
                            kWidth10,
                            Text(
                              '700+',
                              style: textHeadStyle1.copyWith(color: kWhite),
                            ),
                          ],
                        ),
                        Text(
                          'Enrolled Students',
                          style: textThinStyle1.copyWith(
                            color: kBlack.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              right: 40,
              child: ShakeY(
                from: 5,
                duration: const Duration(seconds: 30),
                child: ShakeX(
                  from: 5,
                  duration: const Duration(seconds: 20),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: kWhite.withOpacity(.4),
                      border: Border.all(color: kWhite),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star_rate_sharp,
                              color: kWhite,
                              size: 30,
                            ),
                            kWidth10,
                            Text(
                              '95%',
                              style: textHeadStyle1.copyWith(color: kWhite),
                            ),
                          ],
                        ),
                        Text(
                          'Satisfaction Rate',
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
        ),
      ),
    );
  }
}

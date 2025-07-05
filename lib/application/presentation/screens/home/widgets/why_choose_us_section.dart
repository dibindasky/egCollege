import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/animations/hover/zoom_hover.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Container(
        padding:
            const EdgeInsets.only(left: 20, right: 40, top: 50, bottom: 50),
        child: constrains.maxWidth < 800
            ? const Column(
                children: [
                  _BuildImageSection(),
                  kHeight30,
                  _BuildCarrierInfoSection()
                ],
              )
            : const Row(
                children: [
                  Expanded(child: _BuildImageSection()),
                  kWidth20,
                  Expanded(
                    child: _BuildCarrierInfoSection(),
                  )
                ],
              ),
      );
    });
  }
}

class _BuildImageSection extends StatelessWidget {
  const _BuildImageSection();

  @override
  Widget build(BuildContext context) {
    return Bounce(
      infinite: true,
      duration: const Duration(seconds: 20),
      child: Image.asset(
        graduvatedStudentImg,
      ),
    );
  }
}

class _BuildCarrierInfoSection extends StatelessWidget {
  const _BuildCarrierInfoSection();

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
            'WHY CHOOSE US',
            style: textThinStyle1.copyWith(color: kPurple),
          ),
        ),
        kHeight10,
        RichText(
          text: TextSpan(
            style: textMainHead.copyWith(color: kBlack),
            children: [
              const TextSpan(text: 'Build Your '),
              TextSpan(
                text: 'Career',
                style: textMainHead.copyWith(
                    color: kPurple, fontWeight: FontWeight.bold),
              ),
              const TextSpan(text: '\nLife'),
            ],
          ),
        ),
        kHeight10,
        const _InfoContainer(
          icon: Icons.emoji_people_sharp,
          title: 'Student-first approach',
          description:
              '''At EduGuardian, everything revolves around our students. From day one, a dedicated Student Experience Manager is assigned to support your journey, making sure your voice is heard and your goals are met.''',
        ),
        kHeight20,
        const _InfoContainer(
          icon: Icons.business_center,
          title: 'Career-Driven Internships & Placement',
          description:
              '''We don’t just teach — we connect you to real-world career opportunities. With over 83% of our UK diploma students landing paid internships within 3 months, our placement support speaks for itself.''',
        ),
        kHeight20,
        const _InfoContainer(
          icon: Icons.language_sharp,
          title: 'Globally Recognized. Truly Affordable.',
          description:
              '''Earn UK-accredited diplomas and certifications in Dubai at a price that makes sense. All programs are approved by both the UK and Dubai’s KHDA, giving you trusted, global recognition without breaking the bank.''',
        ),
      ],
    );
  }
}

class _InfoContainer extends StatefulWidget {
  const _InfoContainer(
      {required this.title, required this.description, required this.icon});

  final String title;
  final String description;
  final IconData icon;

  @override
  State<_InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<_InfoContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return ZoomInMouseHover(
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: AnimatedContainer(
        duration: animationDuration,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isHovered ? boxShadow1 : []),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.icon,
              color: kPurple,
            ),
            kWidth10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: textHeadStyle1.copyWith(color: kBlack),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    widget.description,
                    style: textThinStyle1.copyWith(color: kGrey),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

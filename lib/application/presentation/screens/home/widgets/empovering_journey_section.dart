import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/animations/hover/rise_up_hove.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class EmpoveringJourneySection extends StatelessWidget {
  const EmpoveringJourneySection({super.key});

  @override
  Widget build(BuildContext context) {
    final listHeading = [
      'Government-Approved Training Provider',
      'Customized Training Solutions',
      'Expert Trainers with Industry Experience',
      'Career-Driven Learning for Real-World Success',
      'Dedicated Career Support',
      'Flexible Learning That Fits Your Lifestyle'
    ];
    final listContent = [
      '''EduGuardian is licensed and approved in Dubai, delivering certified programs recognized across industries and government bodies.''',
      '''At eduGuardian, we understand that every learner and organization has unique goals. That’s why we offer customized training programs tailored to your specific needs.''',
      '''Learn from Experts with Real-World Experience Our trainers are not just educators — they’re industry professionals with years of hands-on experience in their respective fields. At eduGuardian, you’ll be guided by mentors who bring practical insights, up-to-date knowledge, and real-world expertise to every session.''',
      '''We offer programs that blend theory with practical skills, ensuring you’re ready for the demands of your chosen industry. Join us and turn your ambitions into achievements.''',
      '''We’re committed to helping you land the right job. Our placement assistance program connects you with top employers, offers interview preparation, and provides career guidance to ensure your smooth transition from learning to earning.''',
      '''Choose the learning mode that works best for you — whether it’s fully online, on-site, blended, or hybrid. Our flexible programs make it easy to balance your education with work, and other commitments.'''
    ];

    final colors = [kGreen, kGreen, kRed, kYellow, kIndigo, kBlue];

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isDesktop = constraints.maxWidth >= 1100;
        final bool isTablet =
            constraints.maxWidth < 1100 && constraints.maxWidth >= 759;
        final bool isMobile = constraints.maxWidth < 759;
        return Container(
          color: kGrey.withOpacity(0.1),
          child: Column(
            children: [
              kHeight40,
              Text(
                '''From Classroom to Career\nWe've Got You Covered''',
                style: textMainHead,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 50 : 20, vertical: 20),
                child: Column(
                  children: List.generate(
                    isMobile
                        ? 6
                        : isTablet
                            ? 3
                            : 2, // Number of rows
                    (row) {
                      int itemsPerRow = isMobile
                          ? 1
                          : isTablet
                              ? 2
                              : 3;
                      int startIndex = row * itemsPerRow;
                      int endIndex = (startIndex + itemsPerRow).clamp(0, 6);
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          endIndex - startIndex,
                          (col) {
                            int index = startIndex + col;
                            return Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: col < (endIndex - startIndex - 1)
                                        ? 20
                                        : 0,
                                    bottom: 20),
                                child: _GridTileEmpoveingJourney(
                                  listHeading: listHeading[index],
                                  listContent: listContent[index],
                                  // color: colors[index],
                                  color: kGreen,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              kHeight40,
            ],
          ),
        );
      },
    );
  }
}

class _GridTileEmpoveingJourney extends StatefulWidget {
  const _GridTileEmpoveingJourney({
    required this.listHeading,
    required this.listContent,
    required this.color,
  });

  final String listHeading;
  final String listContent;
  final Color color;

  @override
  State<_GridTileEmpoveingJourney> createState() =>
      _GridTileEmpoveingJourneyState();
}

class _GridTileEmpoveingJourneyState extends State<_GridTileEmpoveingJourney> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return RiseUPMouseHover(
      scale: 1,
      onHover: (value) => setState(() {
        isHovered = value;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            border: isHovered ? Border.all(color: widget.color) : null,
            borderRadius: kRadius15,
            color: kWhite,
            boxShadow: boxShadow3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: widget.color,
                  child: ShakeX(
                    from: 5,
                    animate: isHovered,
                    child: const Icon(
                      Icons.school,
                      color: kWhite,
                    ),
                  ),
                ),
                kWidth10,
                Expanded(
                  child: Text(
                    widget.listHeading,
                    style: textHeadStyle1,
                  ),
                ),
              ],
            ),
            kHeight10,
            Text(
              widget.listContent,
              style: textThinStyle1.copyWith(color: kGrey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

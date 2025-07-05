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
      'Career-Focused Programs',
      'Placement Assistance',
      'Flexible Learning Options'
    ];
    final listContent = [
      '''EduGuardian is licensed and approved in Dubai, delivering certified programs recognized across industries and government bodies.''',
      '''EduGuardian is licensed and approved in Dubai, delivering certified programs recognized across industries and government bodies.''',
      '''Learn from certified instructors who bring real-world expertise and global insights to every session.''',
      '''From certifications to diploma programs, we equip learners with practical skills for job readiness, career transitions, and promotions.''',
      '''Our placement guidance connects learners with internships and job opportunities through CV reviews, interview prep, and industry links.''',
      '''Choose from onsite, live online, or hybrid classes — designed to suit your schedule and learning style.'''
    ];

    final colors = [kPurple, kGreen, kRed, kYellow, kIndigo, kBlue];

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
                'Empowering Your Journey\nwith Excellence in Education',
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
                                  color: colors[index],
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

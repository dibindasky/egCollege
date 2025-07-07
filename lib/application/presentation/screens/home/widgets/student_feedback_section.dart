import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class StudentFeedbackSection extends StatelessWidget {
  const StudentFeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kWhite,
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 768;
          bool isTablet =
              constraints.maxWidth >= 768 && constraints.maxWidth < 1024;

          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : (isTablet ? 40 : 80),
              vertical: isMobile ? 40 : 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHeader(isMobile),
                kHeight50,
                _buildFeedbackCards(constraints.maxWidth),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(bool isMobile) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: kPurple.withOpacity(0.2),
            borderRadius: kRadius50,
          ),
          child: Text(
            'EDUCATION FOR EVERYONE',
            style: TextStyle(
              fontSize: isMobile ? 12 : 14,
              fontWeight: FontWeight.w600,
              color: kPurple,
              letterSpacing: 0.5,
            ),
          ),
        ),
        kHeight20,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: textMainHead.copyWith(
              color: kIndigo,
              fontSize: isMobile ? 32 : 48,
            ),
            children: const [
              TextSpan(text: "Student's "),
              TextSpan(
                text: "Feedback",
                style: TextStyle(
                  color: kPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeedbackCards(double screenWidth) {
    bool isMobile = screenWidth < 768;
    bool isTablet = screenWidth >= 768 && screenWidth < 1024;

    List<FeedbackData> feedbacks = [
      FeedbackData(
        name: "Albin Varghese",
        course: "Student @ Project Management",
        imageUrl:
            "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=150&q=80",
        feedback:
            "I recently completed my PMP training here, A huge shoutout to Mr. Sajid, the coordinator, for his outstanding support throughout the enrollment process. His prompt responses, clear guidance, and warm demeanour made everything seamless. Kudos to Mr.",
      ),
      FeedbackData(
        name: "Subash Chandran",
        course: "Student @ CSWIP",
        imageUrl:
            "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&auto=format&fit=crop&w=150&q=80",
        feedback:
            "I am grateful to be part of such an incredible Institute and want to thank the team for their hard work and dedication. Your efforts have made a significant impact, and it shows. Each team member has been invaluable in their collaboration, support, and",
      ),
      FeedbackData(
        name: "Arun Dev",
        course: "Student @ Digital Marketing",
        imageUrl:
            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&auto=format&fit=crop&w=150&q=80",
        feedback:
            "EduGuardian....! They help you in achieving your dreams and making them come true...! I took a Digital marketing course from EduGuardian Dubai, they provided application-level training catering to the most updated trends in the digital space. I was impressed",
      ),
    ];

    if (isMobile) {
      return Column(
        children: feedbacks
            .map((feedback) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: _buildFeedbackCard(feedback),
                ))
            .toList(),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: feedbacks
          .map((feedback) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: _buildFeedbackCard(feedback),
                ),
              ))
          .toList(),
    );
  }

  Widget _buildFeedbackCard(FeedbackData feedback) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius15,
        boxShadow: [
          BoxShadow(
            color: kGrey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: kGrey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kGrey.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    feedback.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: kGrey.withOpacity(0.3),
                        child: const Icon(
                          Icons.person,
                          color: kGrey,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
              ),
              kWidth15,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      feedback.name,
                      style: textStyle1.copyWith(
                        fontWeight: FontWeight.w600,
                        color: kIndigo,
                      ),
                    ),
                    kHeight5,
                    Text(
                      feedback.course,
                      style: textThinStyle1.copyWith(
                        color: kGrey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              // Quote Icon
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: kPurple.withOpacity(0.1),
                  borderRadius: kRadius10,
                ),
                child: const Icon(
                  Icons.format_quote,
                  color: kPurple,
                  size: 24,
                ),
              ),
            ],
          ),
          kHeight20,
          // Feedback Text
          Text(
            feedback.feedback,
            style: textThinStyle1.copyWith(
              color: kGrey.withOpacity(0.8),
              height: 1.6,
              fontSize: 14,
            ),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
          kHeight15,
          // Read More Button
          InkWell(
            onTap: () {
              // Handle read more action
              print('Read more clicked for ${feedback.name}');
            },
            child: Text(
              '',
              style: textThinStyle1.copyWith(
                color: kPurple,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackData {
  final String name;
  final String course;
  final String imageUrl;
  final String feedback;

  FeedbackData({
    required this.name,
    required this.course,
    required this.imageUrl,
    required this.feedback,
  });
}

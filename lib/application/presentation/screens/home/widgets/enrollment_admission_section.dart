import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class EnrollmentAdmissionSection extends StatelessWidget {
  const EnrollmentAdmissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final listTitle = [
      'Step Into Your Future with a UK Degree',
      'Seamless University Progression',
      'University Progression & Further Education',
    ];
    final descriptions = [
      '''Start your academic and professional journey with flexible diploma and degree programs in the UAE and Singapore, culminating in a UK degree. Our career-driven courses and placement assistance ensure you’re ready for success. Your future begins here — enroll today!''',
      '''At eduGuardian, we make university progression effortless and flexible. Complete your degree right here in the UAE with the University of Bolton, WINC. benefiting from recognized UK qualifications. We also provide smooth credit transfer options, allowing you to carry forward your previous academic achievements without hassle. With dedicated support and flexible pathways, eduGuardian helps you stay on track to reach your educational and career goals.''',
      '''At eduGuardian, we guide you every step of the way — from starting your academic studies to successfully completing your diploma and degree programs. Our flexible learning options, expert faculty, and comprehensive support services ensure you have everything you need to achieve your educational and career goals. Whether you choose to study in the UAE, Singapore, or online, eduGuardian is committed to empowering your journey and unlocking your full potential.'''
    ];
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 768;
      return Container(
        color: kIndigo,
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 40 : 80),
        child: Column(
          children: [
            // kHeight30,
            // Text(
            //   'Your Journey...\nAt A Glance',
            //   style: textMainHead.copyWith(
            //     color: kWhite,
            //   ),
            // ),
            kHeight30,
            EnrollmentAdmissionCard(
              description: descriptions.first,
              title: listTitle.first,
              picture: studentsCheering,
              showIcons: true,
            ),
            kHeight30,
            LayoutBuilder(builder: (context, constraints) {
              bool isMobile = constraints.maxWidth < 768;
              if (isMobile) {
                return Column(
                  children: [
                    EnrollmentAdmissionCard(
                      description: descriptions[1],
                      picture: studentDiscussing,
                      title: listTitle[1],
                    ),
                    kHeight30,
                    EnrollmentAdmissionCard(
                      description: descriptions[2],
                      picture: studentGraduvated,
                      title: listTitle[2],
                    )
                  ],
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EnrollmentAdmissionCard(
                      description: descriptions[1],
                      picture: studentDiscussing,
                      title: listTitle[1],
                    ),
                  ),
                  kWidth30,
                  Expanded(
                    child: EnrollmentAdmissionCard(
                      description: descriptions[2],
                      picture: studentGraduvated,
                      title: listTitle[2],
                    ),
                  )
                ],
              );
            }),
            kHeight30,
          ],
        ),
      );
    });
  }
}

class EnrollmentAdmissionCard extends StatelessWidget {
  const EnrollmentAdmissionCard(
      {Key? key,
      required this.description,
      required this.picture,
      required this.title,
      this.showIcons = false})
      : super(key: key);

  final String title;
  final String description;
  final String picture;
  final bool showIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: kRadius15,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 13, 77, 107),
            Color.fromARGB(255, 25, 61, 61),
          ],
        ),
      ),
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
            child: isMobile
                ? _buildMobileLayout()
                : _buildDesktopLayout(constraints.maxWidth),
          );
        },
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImageSection(),
        const SizedBox(height: 30),
        _buildContentSection(true),
      ],
    );
  }

  Widget _buildDesktopLayout(double screenWidth) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: screenWidth > 1200 ? 45 : 50,
          child: _buildImageSection(),
        ),
        SizedBox(width: screenWidth > 1200 ? 80 : 40),
        Expanded(
          flex: screenWidth > 1200 ? 55 : 50,
          child: _buildContentSection(false),
        ),
      ],
    );
  }

  Widget _buildImageSection() {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500,
        maxHeight: 400,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: picture.isNotEmpty
                ? Image.asset(
                    picture,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: kGrey.withOpacity(0.3),
                        child: const Center(
                          child: Icon(
                            Icons.person,
                            size: 100,
                            color: kGrey,
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentSection(bool isMobile) {
    return Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textStyle1.copyWith(
            fontSize: isMobile ? 32 : 48,
            fontWeight: FontWeight.bold,
            color: kWhite,
            height: 1.1,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 24),
        Text(
          description,
          style: textStyle1.copyWith(
            fontSize: isMobile ? 16 : 18,
            color: kWhite.withOpacity(0.9),
            height: 1.6,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        if (showIcons) const SizedBox(height: 40),
        if (showIcons) _buildStatisticsSection(isMobile),
      ],
    );
  }

  Widget _buildStatisticsSection(bool isMobile) {
    return Row(
      mainAxisAlignment:
          isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        _buildStatItem(
          icon: Icons.emoji_events,
          iconColor: Colors.orange,
          number: '100',
          label: 'Graduated',
        ),
        SizedBox(width: isMobile ? 40 : 60),
        _buildStatItem(
          icon: Icons.group,
          iconColor: Colors.blue,
          number: '500',
          label: 'Enrolled',
        ),
      ],
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required Color iconColor,
    required String number,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 28,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          number,
          style: textStyle1.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: kWhite,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: textStyle1.copyWith(
            fontSize: 14,
            color: kWhite.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

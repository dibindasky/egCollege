import 'package:edu_college/application/presentation/routes/routes.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OurProgramsSection extends StatelessWidget {
  const OurProgramsSection({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(isMobile, context),
                kHeight50,
                _buildProgramsGrid(constraints.maxWidth,context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(bool isMobile, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Our Programs',
          style: textMainHead.copyWith(
            color: kIndigo,
            fontSize: isMobile ? 32 : 40,
          ),
        ),
        if (!isMobile) _buildBrowseButton(context),
      ],
    );
  }

  Widget _buildBrowseButton(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go(Routes.courses);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: kRadius10,
          boxShadow: boxShadow3,
          border: Border.all(color: kGrey.withOpacity(0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Browse EduGuardian Programs',
              style: textStyle1.copyWith(
                color: kIndigo,
                fontWeight: FontWeight.w600,
              ),
            ),
            kWidth10,
            const Icon(
              Icons.arrow_forward,
              color: kIndigo,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramsGrid(double screenWidth,BuildContext context) {
    bool isMobile = screenWidth < 768;
    bool isTablet = screenWidth >= 768 && screenWidth < 1024;

    if (isMobile) {
      return Column(
        children: [
          _buildProgramCard(
            'UK Diploma',
            'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kBlue,
          ),
          kHeight20,
          _buildProgramCard(
            'Training & Career',
            'https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kGreen,
          ),
          kHeight20,
          _buildProgramCard(
            'Corporate Training',
            'https://images.unsplash.com/photo-1556761175-b413da4baf72?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kPurple,
          ),
          kHeight30,
          _buildBrowseButton(context),
        ],
      );
    }

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _buildProgramCard(
            'UK Diploma',
            'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kPurple,
          ),
        ),
        kWidth20,
        Expanded(
          flex: 1,
          child: _buildProgramCard(
            'Training & Career',
            'https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kPurple,
          ),
        ),
        kWidth20,
        Expanded(
          flex: 1,
          child: _buildProgramCard(
            'Corporate Training',
            'https://images.unsplash.com/photo-1556761175-b413da4baf72?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            kPurple,
          ),
        ),
      ],
    );
  }

  Widget _buildProgramCard(String title, String imageUrl, Color accentColor) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // Handle program card tap
          print('$title program selected');
        },
        child: AnimatedContainer(
          duration: animationDuration,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: kRadius15,
            boxShadow: boxShadow2,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: kRadius15,
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: kGrey.withOpacity(0.3),
                        child: const Center(
                          child: Icon(
                            Icons.image,
                            size: 50,
                            color: kGrey,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Gradient Overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ),
                // Content
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: textHeadStyle1.copyWith(
                            color: kWhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        kHeight10,
                        Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: kRadius5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Hover Effect
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: kRadius15,
                      onTap: () {
                        print('$title program selected');
                      },
                      child: Container(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

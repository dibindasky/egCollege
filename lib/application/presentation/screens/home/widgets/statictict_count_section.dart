import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/animations/hover/rise_up_hove.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/widgets/ui_enhancers/spinner_animated_widget.dart';
import 'package:flutter/material.dart';

class StatictsCountsSection extends StatelessWidget {
  const StatictsCountsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: kIndigo),
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Stack(
        children: [
          ..._backgroundAnimation,
          const Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                _StaticetsCountTile(
                  title: 'Active Leaners',
                  count: '700+',
                ),
                _StaticetsCountTile(
                  title: 'Courses & Programs',
                  count: '200+',
                ),
                _StaticetsCountTile(
                  title: 'Learners',
                  count: '5000+',
                ),
                _StaticetsCountTile(
                  title: 'Enrollment per month',
                  count: '200+',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get _backgroundAnimation {
    return [
      SlideInRight(
        duration: const Duration(seconds: 60),
        from: 700,
        child: SpinnerUIEnhanceWidget(
          height: 250,
          width: 250,
          decoration: BoxDecoration(color: kWhite.withOpacity(0.2)),
        ),
      ),
      SlideInLeft(
        duration: const Duration(seconds: 60),
        from: 700,
        child: Align(
          alignment: Alignment.centerRight,
          child: SpinnerUIEnhanceWidget(
            height: 250,
            width: 250,
            decoration: BoxDecoration(color: kWhite.withOpacity(0.2)),
          ),
        ),
      ),
    ];
  }
}

class _StaticetsCountTile extends StatelessWidget {
  const _StaticetsCountTile({
    required this.title,
    required this.count,
  });

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        const CircleAvatar(
          radius: 10,
          backgroundColor: kWhite,
        ),
        Container(
          width: 3,
          height: 20,
          color: kWhite,
        ),
        RiseUPMouseHover(
          child: Container(
            width: 300,
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: kRadius15,
              boxShadow: [
                BoxShadow(
                  color: kWhite.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                _buildUIEnhanceingCircle(
                    top: -130,
                    left: -130,
                    backgroundColor: kIndigo.withOpacity(0.4)),
                _buildUIEnhanceingCircle(
                    bottom: -130,
                    right: -130,
                    backgroundColor: kIndigo.withOpacity(0.4)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          count,
                          style: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUIEnhanceingCircle({
    double radius = 120,
    double innerRadius = 100,
    Color backgroundColor = kPurple,
    Color foregroundColor = kWhite,
    double? bottom,
    double? right,
    double? left,
    double? top,
  }) {
    return Positioned(
      bottom: bottom,
      right: right,
      left: left,
      top: top,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: innerRadius,
              backgroundColor: foregroundColor,
            ),
          ),
        ),
      ),
    );
  }
}

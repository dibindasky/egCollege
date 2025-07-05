import 'dart:ui';

import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:edu_college/application/presentation/utils/responsive/veriables.dart';
import 'package:flutter/material.dart';

class CourceCard extends StatefulWidget {
  final ServiceFeatureModel course;
  final BoxConstraints constraints;

  const CourceCard(
      {super.key, required this.course, required this.constraints});

  @override
  State<CourceCard> createState() => _CourceCardState();
}

class _CourceCardState extends State<CourceCard>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _iconRotation;
  late Animation<double> _gradientAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _iconRotation = Tween<double>(begin: 0, end: 0.25).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _gradientAnimation = Tween<double>(begin: 0.6, end: 0.8).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) => MouseRegion(
        onEnter: (_) {
          setState(() => isHovered = true);
          _controller.forward();
        },
        onExit: (_) {
          setState(() => isHovered = false);
          _controller.reverse();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: Matrix4.identity()
              ..translate(0.0, isHovered ? -5.0 : 0.0),
            child: Container(
              // width: 300,
              // height: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(isHovered ? 0.5 : 0.1),
                    blurRadius: isHovered ? 25 : 15,
                    offset: Offset(0, isHovered ? 15 : 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    // Background Image
                    Positioned.fill(
                      child: Image.network(
                        widget.course.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Animated Gradient Overlay
                    AnimatedBuilder(
                      animation: _gradientAnimation,
                      builder: (context, child) => Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black
                                    .withOpacity(_gradientAnimation.value),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Content
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.course.title,
                            style: textHeadStyle1.copyWith(
                              fontSize: responsiveFontSizeForTitle(
                                  widget.constraints),
                              color: kWhite,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 200),
                                opacity: isHovered ? 1.0 : 0.7,
                                child: Text(
                                  'Start Learning',
                                  style: textThinStyle1.copyWith(color: kWhite),
                                ),
                              ),
                              AnimatedBuilder(
                                animation: _iconRotation,
                                builder: (context, child) => Transform.rotate(
                                  angle: _iconRotation.value * 2 * 3.14159,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: kWhite.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                        color: kWhite.withOpacity(0.3),
                                        width: 1,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: kWhite,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ServiceFeatureModel {
  final String title;
  final String imagePath;
  final String description;

  ServiceFeatureModel({
    required this.title,
    required this.imagePath,
    required this.description,
  });
}

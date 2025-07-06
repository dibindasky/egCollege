import 'package:animate_do/animate_do.dart';
import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:edu_college/application/presentation/utils/const.dart';
import 'package:flutter/material.dart';

/// with slide and wiggle animation
class MoveToTop extends StatefulWidget {
  const MoveToTop({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  State<MoveToTop> createState() => _MoveToTopState();
}

class _MoveToTopState extends State<MoveToTop> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: SlideInRight(
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                color: mediumPurple,
              ),
              child: SlideInDown(
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 1.0, end: isHovered ? 1.25 : 1),
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeOutCubic,
                  builder: (context, scale, child) =>
                      Transform.scale(scale: scale, child: child),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: kRadius7,
                      color: kPaleBlue,
                    ),
                    child: SlideInUp(
                      delay: const Duration(milliseconds: 500),
                      child: ShakeY(
                        from: 5,
                        delay: const Duration(milliseconds: 1500),
                        child: const Icon(
                          Icons.arrow_upward_outlined,
                          color: kPurple600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

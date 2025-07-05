import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class PosiTen extends StatelessWidget {
  const PosiTen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        top: size.height * 0.7,
        right: size.width * 0.5,
        child: Container(
            width: size.width * 0.2,
            height: size.width * 0.2,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kPurple100, width: 10))));
  }
}

class PosiNine extends StatelessWidget {
  const PosiNine({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        bottom: size.height * 0.1,
        left: size.width * 0.05,
        child: Container(
            width: size.width * 0.15,
            height: size.width * 0.15,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: kPurple100)));
  }
}

class PosiEight extends StatelessWidget {
  const PosiEight({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        top: size.height * 0.6,
        left: size.width / 2 - size.width * 0.7,
        child: Container(
            width: size.width * 0.6,
            height: size.width * 0.6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPurple100,
            )));
  }
}

class PosiThree extends StatelessWidget {
  const PosiThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        bottom: -size.width * 0.3,
        right: -size.width * 0.2,
        child: Container(
            width: size.width * 0.6,
            height: size.width * 0.6,
            decoration: BoxDecoration(
                border: Border.all(color: kPurple100, width: 15),
                shape: BoxShape.circle)));
  }
}

class PosiTwo extends StatelessWidget {
  const PosiTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        bottom: -size.width * 0.25,
        right: -size.width * 0.2,
        child: Container(
            width: size.width * 0.5,
            height: size.width * 0.5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kPurple100, width: 25))));
  }
}

class PosiOne extends StatelessWidget {
  const PosiOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
        top: -size.width * 0.3,
        left: -size.width * 0.2,
        child: ClipOval(
            child: Container(
                width: size.width * 0.7,
                height: size.width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: kPurple100, width: 20),
                    shape: BoxShape.circle))));
  }
}

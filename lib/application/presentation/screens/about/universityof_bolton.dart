import 'package:edu_college/application/presentation/screens/about/about.dart';
import 'package:flutter/material.dart';

class UniversityOfBolton extends StatelessWidget {
  const UniversityOfBolton({super.key, this.isSmallScreen = false});

  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      CustomPaint(
        size: const Size(double.infinity, 600),
        painter: CurvedBackgroundPainter(),
      ),
      Center(
          child: Column(children: [
        const Text('University of Bolton',
            style: TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        const SizedBox(height: 20),
        Container(
          width: 120,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(height: 40),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Text(
                'The University of Bolton Academic Centre – Ras Al Khaimah is the UAE campus of the UK-based University of Bolton, established in 2008. It offers undergraduate and postgraduate programs in fields such as engineering, computing, business, law, and psychology. The center ensures academic quality by aligning its programs with UK standards and collaborating with professional bodies like ACCA and IEEE. With a diverse student body from over 40 countries, the institution is set to expand with a new campus opening in September 2025',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                    height: 1.6,
                    letterSpacing: 0.3)))
      ]))
    ]));
  }
}

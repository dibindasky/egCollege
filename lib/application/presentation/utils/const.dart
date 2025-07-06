import 'package:edu_college/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight15 = SizedBox(height: 15);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight40 = SizedBox(height: 40);
const kHeight50 = SizedBox(height: 50);
const kHeight60 = SizedBox(height: 60);
const kHeight7 = SizedBox(height: 7);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth15 = SizedBox(width: 15);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

final kRadius5 = BorderRadius.circular(5);
final kRadius7 = BorderRadius.circular(7);
final kRadius10 = BorderRadius.circular(10);
final kRadius15 = BorderRadius.circular(15);
final kRadius50 = BorderRadius.circular(50);

const animationDuration = Duration(milliseconds: 500);
const animationDurationLong = Duration(milliseconds: 800);
const animationDurationFast = Duration(milliseconds: 300);

TextStyle textMainHead = const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 40,
);

TextStyle textHeadStyle1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 25,
);

TextStyle textStyle1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 17,
);

TextStyle textThinStyle1 = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 15,
);

List<BoxShadow> boxShadow1 = const [
  BoxShadow(spreadRadius: 5, blurRadius: 10, offset: Offset(0, 3), color: kGrey)
];
List<BoxShadow> boxShadow2 = const [
  BoxShadow(spreadRadius: 2, blurRadius: 4, offset: Offset(0, 1), color: kGrey)
];
List<BoxShadow> boxShadow3 = const [
  BoxShadow(spreadRadius: 1, blurRadius: 3, offset: Offset(0, 1), color: kGrey)
];

List<BoxShadow> boxShadow4 = [
  const BoxShadow(
      spreadRadius: 2, blurRadius: 5, offset: Offset(0, 1), color: kGrey)
];

// logos
String eduGuardianLogo = 'assets/logo/companylogonewfinal.png';
String eduGuardianLogoWithText = 'assets/logo/eduGuardian_logo.png';
String aboutUsImage1 = 'assets/dev/about22.png';
String aboutUsImage2 = 'assets/dev/elearning3.png';
String aboutUsImage3 = 'assets/dev/eSPG3.png';

// home images
String graduvatedStudentImg = 'assets/images/graduvated_student.png';

const String token =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY4MzU2ZDE5ZGY0MWE3MzhmOGRiYTI1YyIsImVtYWlsIjoiZmViaW5iYWJ5ODc5QGdtYWlsLmNvbSIsImZ1bGxOYW1lIjoiRmViaW4iLCJyb2xlIjoidXNlciIsImlhdCI6MTc0ODMzMTgwMX0.SX93iYi8uWAE6Q-dQBNMB6XNVnmRbi-daNidQRbaBkw';

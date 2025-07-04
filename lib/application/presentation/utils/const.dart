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

TextStyle textMainHead = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 40,
  height: 2.1,
);

TextStyle textHeadStyle1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 25,
  height: 2.1,
);

TextStyle textStyle1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 17,
  height: 2.1,
);

TextStyle textThinStyle1 = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 15,
  height: 2.1,
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


String eduGuardianLogo = 'assets/logo/companylogonewfinal.png';
String eduGuardianLogoWithText = 'assets/logo/eduGuardian_logo.png';

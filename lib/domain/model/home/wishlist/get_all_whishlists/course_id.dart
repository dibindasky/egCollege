import 'package:json_annotation/json_annotation.dart';

import 'academic_overview.dart';
import 'admission_overview.dart';
import 'briefoverview.dart';
import 'course_trajectory.dart';
import 'curriculum.dart';
import 'faq.dart';
import 'jobrecommendation.dart';
import 'minimumrequirement.dart';
import 'requireddocument.dart';

part 'course_id.g.dart';

@JsonSerializable()
class CourseId {
  Briefoverview? briefoverview;
  AcademicOverview? academicOverview;
  CourseTrajectory? courseTrajectory;
  AdmissionOverview? admissionOverview;
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? slug;
  String? description;
  String? image;
  String? filter;
  String? filter1;
  String? filter2;
  String? filter3;
  String? filter4;
  String? filter5;
  String? filter6;
  dynamic filter7;
  String? universityname;
  String? country;
  String? city;
  List<String>? programInsight;
  List<Minimumrequirement>? minimumrequirements;
  List<Requireddocument>? requireddocuments;
  List<Curriculum>? curriculum;
  List<Faq>? faqs;
  List<String>? studentexperience;
  String? totaltuitionfee;
  List<Jobrecommendation>? jobrecommendation;
  String? stepahead;
  String? jobdemand;
  String? advancecareer;
  String? careersoverview;
  String? finalfee;
  String? scholarship;
  String? registrationfee;
  String? semesterfee;
  bool? isYearly;

  CourseId({
    this.briefoverview,
    this.academicOverview,
    this.courseTrajectory,
    this.admissionOverview,
    this.id,
    this.name,
    this.slug,
    this.description,
    this.image,
    this.filter,
    this.filter1,
    this.filter2,
    this.filter3,
    this.filter4,
    this.filter5,
    this.filter6,
    this.filter7,
    this.universityname,
    this.country,
    this.city,
    this.programInsight,
    this.minimumrequirements,
    this.requireddocuments,
    this.curriculum,
    this.faqs,
    this.studentexperience,
    this.totaltuitionfee,
    this.jobrecommendation,
    this.stepahead,
    this.jobdemand,
    this.advancecareer,
    this.careersoverview,
    this.finalfee,
    this.scholarship,
    this.registrationfee,
    this.semesterfee,
    this.isYearly,
  });

  factory CourseId.fromJson(Map<String, dynamic> json) {
    return _$CourseIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseIdToJson(this);
}

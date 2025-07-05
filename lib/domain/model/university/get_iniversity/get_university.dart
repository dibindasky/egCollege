import 'package:json_annotation/json_annotation.dart';

import 'major_courses_offered.dart';

part 'get_university.g.dart';

@JsonSerializable()
class GetUniversity {
  @JsonKey(name: '_id')
  String? id;
  String? universityName;
  String? logo;
  String? backgroundImage;
  String? missionStatement;
  String? accreditationDetails;
  DateTime? applicationOpenDate;
  DateTime? firstDeadline;
  DateTime? lastDeadline;
  List<MajorCoursesOffered>? majorCoursesOffered;
  List<dynamic>? reviews;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? slug;
  @JsonKey(name: '__v')
  int? v;
  String? graduatePrograms;
  String? locations;
  String? professionalPrograms;
  String? subDescription;
  String? undergraduatePrograms;
  String? visionStatement;
  String? briefUniversity;
  String? aboutUniversity;
  String? filter1;
  String? filter2;
  String? filter3;
  String? filter4;
  String? filter5;
  String? filter6;
  String? filter7;

  GetUniversity(
      {this.id,
      this.universityName,
      this.logo,
      this.backgroundImage,
      this.missionStatement,
      this.accreditationDetails,
      this.applicationOpenDate,
      this.firstDeadline,
      this.lastDeadline,
      this.majorCoursesOffered,
      this.reviews,
      this.createdAt,
      this.updatedAt,
      this.slug,
      this.v,
      this.graduatePrograms,
      this.locations,
      this.professionalPrograms,
      this.subDescription,
      this.undergraduatePrograms,
      this.visionStatement,
      this.briefUniversity,
      this.aboutUniversity,
      this.filter1,
      this.filter2,
      this.filter3,
      this.filter4,
      this.filter5,
      this.filter6,
      this.filter7});

  factory GetUniversity.fromJson(Map<String, dynamic> json) {
    return _$GetUniversityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUniversityToJson(this);
}

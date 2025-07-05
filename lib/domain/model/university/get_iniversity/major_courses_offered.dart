import 'package:json_annotation/json_annotation.dart';

part 'major_courses_offered.g.dart';

@JsonSerializable()
class MajorCoursesOffered {
  String? courseTitle;
  List<String>? courses;

  MajorCoursesOffered({this.courseTitle, this.courses});

  factory MajorCoursesOffered.fromJson(Map<String, dynamic> json) {
    return _$MajorCoursesOfferedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MajorCoursesOfferedToJson(this);
}

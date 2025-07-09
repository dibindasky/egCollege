import 'package:json_annotation/json_annotation.dart';

part 'course_trajectory.g.dart';

@JsonSerializable()
class CourseTrajectory {
  String? description;
  List<String>? demandjobs;

  CourseTrajectory({this.description, this.demandjobs});

  factory CourseTrajectory.fromJson(Map<String, dynamic> json) {
    return _$CourseTrajectoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseTrajectoryToJson(this);
}

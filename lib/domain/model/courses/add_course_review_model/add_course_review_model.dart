import 'package:json_annotation/json_annotation.dart';

part 'add_course_review_model.g.dart';

@JsonSerializable()
class AddCourseReviewModel {
  String? courseId;
  String? courseSlug;
  int? starRating;
  String? comment;

  AddCourseReviewModel({
    this.courseId,
    this.courseSlug,
    this.starRating,
    this.comment,
  });

  factory AddCourseReviewModel.fromJson(Map<String, dynamic> json) {
    return _$AddCourseReviewModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddCourseReviewModelToJson(this);
}

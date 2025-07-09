import 'package:edu_college/domain/model/courses/getcource_review_bycource/course_review.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getcource_review_bycource.g.dart';

@JsonSerializable()
class GetcourceReviewBycource {
  List<CourseReview>? data;

  GetcourceReviewBycource({this.data});

  factory GetcourceReviewBycource.fromJson(Map<String, dynamic> json) {
    return _$GetcourceReviewBycourceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetcourceReviewBycourceToJson(this);
}

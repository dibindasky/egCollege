import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'course_review.g.dart';

@JsonSerializable()
class CourseReview {
  UserId? userId;
  int? starRating;
  String? comment;
  @JsonKey(name: '_id')
  String? id;

  CourseReview({this.userId, this.starRating, this.comment, this.id});

  factory CourseReview.fromJson(Map<String, dynamic> json) =>
      _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

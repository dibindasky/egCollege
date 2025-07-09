import 'package:json_annotation/json_annotation.dart';

part 'add_university_review_model.g.dart';

@JsonSerializable()
class AddUniversityReviewModel {
  String? universityId;
  String? universitySlug;
  int? starRating;
  String? comment;

  AddUniversityReviewModel({
    this.universityId,
    this.universitySlug,
    this.starRating,
    this.comment,
  });

  factory AddUniversityReviewModel.fromJson(Map<String, dynamic> json) {
    return _$AddUniversityReviewModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddUniversityReviewModelToJson(this);
}

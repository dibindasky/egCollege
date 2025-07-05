// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_university_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUniversityReviewModel _$AddUniversityReviewModelFromJson(
        Map<String, dynamic> json) =>
    AddUniversityReviewModel(
      universityId: json['universityId'] as String?,
      universitySlug: json['universitySlug'] as String?,
      starRating: (json['starRating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$AddUniversityReviewModelToJson(
        AddUniversityReviewModel instance) =>
    <String, dynamic>{
      'universityId': instance.universityId,
      'universitySlug': instance.universitySlug,
      'starRating': instance.starRating,
      'comment': instance.comment,
    };

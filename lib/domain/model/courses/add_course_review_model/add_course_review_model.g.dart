// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_course_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCourseReviewModel _$AddCourseReviewModelFromJson(
        Map<String, dynamic> json) =>
    AddCourseReviewModel(
      courseId: json['courseId'] as String?,
      courseSlug: json['courseSlug'] as String?,
      starRating: (json['starRating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$AddCourseReviewModelToJson(
        AddCourseReviewModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseSlug': instance.courseSlug,
      'starRating': instance.starRating,
      'comment': instance.comment,
    };

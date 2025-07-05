// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseReview _$DatumFromJson(Map<String, dynamic> json) => CourseReview(
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      starRating: (json['starRating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$DatumToJson(CourseReview instance) => <String, dynamic>{
      'userId': instance.userId,
      'starRating': instance.starRating,
      'comment': instance.comment,
      '_id': instance.id,
    };

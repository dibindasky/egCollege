// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcource_review_bycource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetcourceReviewBycource _$GetcourceReviewBycourceFromJson(
        Map<String, dynamic> json) =>
    GetcourceReviewBycource(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => CourseReview.fromJson(e as Map<String, dynamic>))
            .toList());

Map<String, dynamic> _$GetcourceReviewBycourceToJson(
        GetcourceReviewBycource instance) =>
    <String, dynamic>{'data': instance.data};

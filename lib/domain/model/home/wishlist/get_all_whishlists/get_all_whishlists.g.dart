// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_whishlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllWhishlists _$GetAllWhishlistsFromJson(Map<String, dynamic> json) =>
    GetAllWhishlists(
      courseId: json['courseId'] == null
          ? null
          : GetAllCouses.fromJson(json['courseId'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      addedAt: json['addedAt'] == null
          ? null
          : DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$GetAllWhishlistsToJson(GetAllWhishlists instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      '_id': instance.id,
      'addedAt': instance.addedAt?.toIso8601String(),
    };

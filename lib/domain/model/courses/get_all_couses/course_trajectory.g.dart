// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_trajectory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseTrajectory _$CourseTrajectoryFromJson(Map<String, dynamic> json) =>
    CourseTrajectory(
      description: json['description'] as String?,
      demandjobs: (json['demandjobs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CourseTrajectoryToJson(CourseTrajectory instance) =>
    <String, dynamic>{
      'description': instance.description,
      'demandjobs': instance.demandjobs,
    };

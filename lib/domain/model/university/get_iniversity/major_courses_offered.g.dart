// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'major_courses_offered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MajorCoursesOffered _$MajorCoursesOfferedFromJson(Map<String, dynamic> json) =>
    MajorCoursesOffered(
      courseTitle: json['courseTitle'] as String?,
      courses:
          (json['courses'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MajorCoursesOfferedToJson(
        MajorCoursesOffered instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'courses': instance.courses,
    };

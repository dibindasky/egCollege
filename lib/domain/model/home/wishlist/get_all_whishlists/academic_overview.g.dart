// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicOverview _$AcademicOverviewFromJson(Map<String, dynamic> json) =>
    AcademicOverview(
      description: json['description'] as String?,
      points:
          (json['points'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AcademicOverviewToJson(AcademicOverview instance) =>
    <String, dynamic>{
      'description': instance.description,
      'points': instance.points,
    };

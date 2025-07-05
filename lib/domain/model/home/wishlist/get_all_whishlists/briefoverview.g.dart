// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefoverview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Briefoverview _$BriefoverviewFromJson(Map<String, dynamic> json) =>
    Briefoverview(
      description: json['description'] as String?,
      details:
          (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BriefoverviewToJson(Briefoverview instance) =>
    <String, dynamic>{
      'description': instance.description,
      'details': instance.details,
    };

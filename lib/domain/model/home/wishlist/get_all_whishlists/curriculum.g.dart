// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Curriculum _$CurriculumFromJson(Map<String, dynamic> json) => Curriculum(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      units:
          (json['units'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CurriculumToJson(Curriculum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'units': instance.units,
    };

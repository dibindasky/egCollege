// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
      image: json['image'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'subtitle': instance.subtitle,
      '_id': instance.id,
    };

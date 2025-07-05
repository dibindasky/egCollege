// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      itemType: json['itemType'] as String?,
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'itemType': instance.itemType,
      'heading': instance.heading,
      'description': instance.description,
      'images': instance.images,
      'features': instance.features?.map((e) => e.toJson()).toList(),
      '_id': instance.id,
    };

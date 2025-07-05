// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      socialMediaType: json['socialMediaType'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'socialMediaType': instance.socialMediaType,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__v': instance.v,
    };

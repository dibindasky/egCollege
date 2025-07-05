// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feeds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFeedsModel _$GetFeedsModelFromJson(Map<String, dynamic> json) =>
    GetFeedsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetFeedsModelToJson(GetFeedsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

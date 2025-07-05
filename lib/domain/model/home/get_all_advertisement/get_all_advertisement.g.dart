// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_advertisement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllAdvertisement _$GetAllAdvertisementFromJson(Map<String, dynamic> json) =>
    GetAllAdvertisement(
      success: json['success'] as bool?,
      count: (json['count'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllAdvertisementToJson(
        GetAllAdvertisement instance) =>
    <String, dynamic>{
      'success': instance.success,
      'count': instance.count,
      'data': instance.data,
    };

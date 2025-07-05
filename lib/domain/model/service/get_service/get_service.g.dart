// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetService _$ServiceFromJson(Map<String, dynamic> json) => GetService(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceToJson(GetService instance) => <String, dynamic>{
      'data': instance.data?.toJson(),
    };

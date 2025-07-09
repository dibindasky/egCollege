// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllServices _$GetAllServicesFromJson(Map<String, dynamic> json) =>
    GetAllServices(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllServicesToJson(GetAllServices instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartModel _$GetCartModelFromJson(Map<String, dynamic> json) => GetCartModel(
      course: json['course'] == null
          ? null
          : Coursemodel.fromJson(json['course'] as Map<String, dynamic>),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$GetCartModelToJson(GetCartModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      '_id': instance.id,
    };

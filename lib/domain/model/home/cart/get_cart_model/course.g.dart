// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coursemodel _$CourseFromJson(Map<String, dynamic> json) => Coursemodel(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      universityname: json['universityname'] as String?,
      totaltuitionfee: json['totaltuitionfee'] as String?,
      scholarship: json['scholarship'] as String?,
      registrationfee: json['registrationfee'] as String?,
      semesterfee: json['semesterfee'] as String?,
      isYearly: json['isYearly'] as bool,
    );

Map<String, dynamic> _$CourseToJson(Coursemodel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'universityname': instance.universityname,
      'totaltuitionfee': instance.totaltuitionfee,
      'scholarship': instance.scholarship,
      'registrationfee': instance.registrationfee,
      'semesterfee': instance.semesterfee,
      'isYearly': instance.isYearly
    };

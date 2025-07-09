// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_university.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUniversity _$GetUniversityFromJson(Map<String, dynamic> json) =>
    GetUniversity(
      id: json['_id'] as String?,
      universityName: json['universityName'] as String?,
      logo: json['logo'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      missionStatement: json['missionStatement'] as String?,
      accreditationDetails: json['accreditationDetails'] as String?,
      applicationOpenDate: json['applicationOpenDate'] == null
          ? null
          : DateTime.parse(json['applicationOpenDate'] as String),
      firstDeadline: json['firstDeadline'] == null
          ? null
          : DateTime.parse(json['firstDeadline'] as String),
      lastDeadline: json['lastDeadline'] == null
          ? null
          : DateTime.parse(json['lastDeadline'] as String),
      majorCoursesOffered: (json['majorCoursesOffered'] as List<dynamic>?)
          ?.map((e) => MajorCoursesOffered.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: json['reviews'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      slug: json['slug'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      graduatePrograms: json['graduatePrograms'] as String?,
      locations: json['locations'] as String?,
      professionalPrograms: json['professionalPrograms'] as String?,
      subDescription: json['subDescription'] as String?,
      undergraduatePrograms: json['undergraduatePrograms'] as String?,
      visionStatement: json['visionStatement'] as String?,
      briefUniversity: json['briefUniversity'] as String?,
      aboutUniversity: json['aboutUniversity'] as String?,
      filter1: json['filter1'] as String?,
      filter2: json['filter2'] as String?,
      filter3: json['filter3'] as String?,
      filter4: json['filter4'] as String?,
      filter5: json['filter5'] as String?,
      filter6: json['filter6'] as String?,
      filter7: json['filter7'] as String?,
    );

Map<String, dynamic> _$GetUniversityToJson(GetUniversity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'universityName': instance.universityName,
      'logo': instance.logo,
      'backgroundImage': instance.backgroundImage,
      'missionStatement': instance.missionStatement,
      'accreditationDetails': instance.accreditationDetails,
      'applicationOpenDate': instance.applicationOpenDate?.toIso8601String(),
      'firstDeadline': instance.firstDeadline?.toIso8601String(),
      'lastDeadline': instance.lastDeadline?.toIso8601String(),
      'majorCoursesOffered': instance.majorCoursesOffered,
      'reviews': instance.reviews,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'slug': instance.slug,
      '__v': instance.v,
      'graduatePrograms': instance.graduatePrograms,
      'locations': instance.locations,
      'professionalPrograms': instance.professionalPrograms,
      'subDescription': instance.subDescription,
      'undergraduatePrograms': instance.undergraduatePrograms,
      'visionStatement': instance.visionStatement,
      'briefUniversity': instance.briefUniversity,
      'aboutUniversity': instance.aboutUniversity,
      'filter1': instance.filter1,
      'filter2': instance.filter2,
      'filter3': instance.filter3,
      'filter4': instance.filter4,
      'filter5': instance.filter5,
      'filter6': instance.filter6,
      'filter7': instance.filter7,
    };

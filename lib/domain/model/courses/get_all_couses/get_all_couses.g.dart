// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_couses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCouses _$GetAllCousesFromJson(Map<String, dynamic> json) => GetAllCouses(
      briefoverview: json['briefoverview'] == null
          ? null
          : Briefoverview.fromJson(
              json['briefoverview'] as Map<String, dynamic>),
      academicOverview: json['academicOverview'] == null
          ? null
          : AcademicOverview.fromJson(
              json['academicOverview'] as Map<String, dynamic>),
      courseTrajectory: json['courseTrajectory'] == null
          ? null
          : CourseTrajectory.fromJson(
              json['courseTrajectory'] as Map<String, dynamic>),
      admissionOverview: json['admissionOverview'] == null
          ? null
          : AdmissionOverview.fromJson(
              json['admissionOverview'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      filter: json['filter'] as String?,
      filter1: json['filter1'] as String?,
      filter2: json['filter2'] as String?,
      filter3: json['filter3'] as String?,
      filter4: json['filter4'] as String?,
      filter5: json['filter5'] as String?,
      filter6: json['filter6'] as String?,
      filter7: json['filter7'],
      universityname: json['universityname'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      programInsight: (json['programInsight'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minimumrequirements: (json['minimumrequirements'] as List<dynamic>?)
          ?.map((e) => Minimumrequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      requireddocuments: (json['requireddocuments'] as List<dynamic>?)
          ?.map((e) => Requireddocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      curriculum: (json['curriculum'] as List<dynamic>?)
          ?.map((e) => Curriculum.fromJson(e as Map<String, dynamic>))
          .toList(),
      faqs: (json['faqs'] as List<dynamic>?)
          ?.map((e) => Faq.fromJson(e as Map<String, dynamic>))
          .toList(),
      studentexperience: (json['studentexperience'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      totaltuitionfee: json['totaltuitionfee'] as String?,
      jobrecommendation: (json['jobrecommendation'] as List<dynamic>?)
          ?.map((e) => Jobrecommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepahead: json['stepahead'] as String?,
      jobdemand: json['jobdemand'] as String?,
      advancecareer: json['advancecareer'] as String?,
      careersoverview: json['careersoverview'] as String?,
      finalfee: json['finalfee'] as String?,
      scholarship: json['scholarship'] as String?,
      registrationfee: json['registrationfee'] as String?,
      semesterfee: json['semesterfee'] as String?,
    );

Map<String, dynamic> _$GetAllCousesToJson(GetAllCouses instance) =>
    <String, dynamic>{
      'briefoverview': instance.briefoverview,
      'academicOverview': instance.academicOverview,
      'courseTrajectory': instance.courseTrajectory,
      'admissionOverview': instance.admissionOverview,
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'image': instance.image,
      'filter': instance.filter,
      'filter1': instance.filter1,
      'filter2': instance.filter2,
      'filter3': instance.filter3,
      'filter4': instance.filter4,
      'filter5': instance.filter5,
      'filter6': instance.filter6,
      'filter7': instance.filter7,
      'universityname': instance.universityname,
      'country': instance.country,
      'city': instance.city,
      'programInsight': instance.programInsight,
      'minimumrequirements': instance.minimumrequirements,
      'requireddocuments': instance.requireddocuments,
      'curriculum': instance.curriculum,
      'faqs': instance.faqs,
      'studentexperience': instance.studentexperience,
      'totaltuitionfee': instance.totaltuitionfee,
      'jobrecommendation': instance.jobrecommendation,
      'stepahead': instance.stepahead,
      'jobdemand': instance.jobdemand,
      'advancecareer': instance.advancecareer,
      'careersoverview': instance.careersoverview,
      'finalfee': instance.finalfee,
      'scholarship': instance.scholarship,
      'registrationfee': instance.registrationfee,
      'semesterfee': instance.semesterfee,
    };

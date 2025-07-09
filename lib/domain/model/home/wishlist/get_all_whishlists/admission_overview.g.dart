// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdmissionOverview _$AdmissionOverviewFromJson(Map<String, dynamic> json) =>
    AdmissionOverview(
      description: json['description'] as String?,
      applicationrequirements:
          (json['applicationrequirements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$AdmissionOverviewToJson(AdmissionOverview instance) =>
    <String, dynamic>{
      'description': instance.description,
      'applicationrequirements': instance.applicationrequirements,
    };

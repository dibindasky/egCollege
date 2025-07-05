import 'package:json_annotation/json_annotation.dart';

part 'academic_overview.g.dart';

@JsonSerializable()
class AcademicOverview {
  String? description;
  List<String>? points;

  AcademicOverview({this.description, this.points});

  factory AcademicOverview.fromJson(Map<String, dynamic> json) {
    return _$AcademicOverviewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AcademicOverviewToJson(this);
}

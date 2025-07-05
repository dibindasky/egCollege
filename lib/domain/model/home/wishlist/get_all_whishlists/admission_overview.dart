import 'package:json_annotation/json_annotation.dart';

part 'admission_overview.g.dart';

@JsonSerializable()
class AdmissionOverview {
  String? description;
  List<String>? applicationrequirements;

  AdmissionOverview({this.description, this.applicationrequirements});

  factory AdmissionOverview.fromJson(Map<String, dynamic> json) {
    return _$AdmissionOverviewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdmissionOverviewToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'briefoverview.g.dart';

@JsonSerializable()
class Briefoverview {
  String? description;
  List<String>? details;

  Briefoverview({this.description, this.details});

  factory Briefoverview.fromJson(Map<String, dynamic> json) {
    return _$BriefoverviewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BriefoverviewToJson(this);
}

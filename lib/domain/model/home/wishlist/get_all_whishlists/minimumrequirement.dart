import 'package:json_annotation/json_annotation.dart';

part 'minimumrequirement.g.dart';

@JsonSerializable()
class Minimumrequirement {
  @JsonKey(name: '_id')
  String? id;
  String? key;
  String? value;

  Minimumrequirement({this.id, this.key, this.value});

  factory Minimumrequirement.fromJson(Map<String, dynamic> json) {
    return _$MinimumrequirementFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MinimumrequirementToJson(this);
}

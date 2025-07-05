import 'package:json_annotation/json_annotation.dart';

part 'jobrecommendation.g.dart';

@JsonSerializable()
class Jobrecommendation {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  String? description;

  Jobrecommendation({this.id, this.title, this.description});

  factory Jobrecommendation.fromJson(Map<String, dynamic> json) {
    return _$JobrecommendationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobrecommendationToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'feature.g.dart';

@JsonSerializable()
class Feature {
  String? image;
  String? title;
  String? subtitle;
  @JsonKey(name: '_id')
  String? id;

  Feature({
    this.image,
    this.title,
    this.subtitle,
    this.id,
  });

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);

  Map<String, dynamic> toJson() => _$FeatureToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'curriculum.g.dart';

@JsonSerializable()
class Curriculum {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  List<String>? units;

  Curriculum({this.id, this.title, this.units});

  factory Curriculum.fromJson(Map<String, dynamic> json) {
    return _$CurriculumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurriculumToJson(this);
}

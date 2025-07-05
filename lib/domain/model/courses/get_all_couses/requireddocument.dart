import 'package:json_annotation/json_annotation.dart';

part 'requireddocument.g.dart';

@JsonSerializable()
class Requireddocument {
  @JsonKey(name: '_id')
  String? id;
  String? key;
  String? value;

  Requireddocument({this.id, this.key, this.value});

  factory Requireddocument.fromJson(Map<String, dynamic> json) {
    return _$RequireddocumentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RequireddocumentToJson(this);
}

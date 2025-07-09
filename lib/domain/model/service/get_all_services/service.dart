import 'package:json_annotation/json_annotation.dart';

part 'service.g..dart';

@JsonSerializable()
class Service {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? image;

  Service({this.id, this.name, this.image});

  factory Service.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

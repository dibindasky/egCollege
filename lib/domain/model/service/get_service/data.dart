import 'package:json_annotation/json_annotation.dart';
import 'item.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? description;
  String? image;
  List<Item>? items;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Data({
    this.id,
    this.name,
    this.description,
    this.image,
    this.items,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'feature.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? itemType;
  String? heading;
  String? description;
  List<String>? images;
  List<Feature>? features;
  @JsonKey(name: '_id')
  String? id;

  Item({
    this.itemType,
    this.heading,
    this.description,
    this.images,
    this.features,
    this.id,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

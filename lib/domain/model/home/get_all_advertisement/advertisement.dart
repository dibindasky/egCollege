import 'package:json_annotation/json_annotation.dart';

part 'advertisement.g.dart';

@JsonSerializable()
class Advertisement {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  String? description;
  String? imageUrl;
  String? targetUrl;
  DateTime? startDate;
  DateTime? endDate;
  String? status;
  String? position;
  int? clicks;
  int? impressions;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Advertisement({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.targetUrl,
    this.startDate,
    this.endDate,
    this.status,
    this.position,
    this.clicks,
    this.impressions,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementToJson(this);
}

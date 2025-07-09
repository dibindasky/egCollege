import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  String? content;
  String? socialMediaType;
  String? image;
  DateTime? createdAt;
  @JsonKey(name: '__v')
  int? v;

  Feed({
    this.id,
    this.title,
    this.content,
    this.socialMediaType,
    this.image,
    this.createdAt,
    this.v,
  });

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  Map<String, dynamic> toJson() => _$FeedToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'user_id.g.dart';

@JsonSerializable()
class UserId {
  @JsonKey(name: '_id')
  String? id;
  String? fullName;

  UserId({this.id, this.fullName});

  factory UserId.fromJson(Map<String, dynamic> json) {
    return _$UserIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserIdToJson(this);
}

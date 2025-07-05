import 'package:json_annotation/json_annotation.dart';

import 'feed.dart';

part 'get_feeds_model.g.dart';

@JsonSerializable()
class GetFeedsModel {
  List<Feed>? data;

  GetFeedsModel({this.data});

  factory GetFeedsModel.fromJson(Map<String, dynamic> json) {
    return _$GetFeedsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetFeedsModelToJson(this);
}

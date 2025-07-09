import 'package:json_annotation/json_annotation.dart';

import 'course.dart';

part 'get_cart_model.g.dart';

@JsonSerializable()
class GetCartModel {
  Coursemodel? course;
  @JsonKey(name: '_id')
  String? id;

  GetCartModel({this.course, this.id});

  factory GetCartModel.fromJson(Map<String, dynamic> json) {
    return _$GetCartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCartModelToJson(this);
}

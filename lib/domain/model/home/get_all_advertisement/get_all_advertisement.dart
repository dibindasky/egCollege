import 'package:json_annotation/json_annotation.dart';

import 'advertisement.dart';

part 'get_all_advertisement.g.dart';

@JsonSerializable()
class GetAllAdvertisement {
  bool? success;
  int? count;
  List<Advertisement>? data;

  GetAllAdvertisement({this.success, this.count, this.data});

  factory GetAllAdvertisement.fromJson(Map<String, dynamic> json) {
    return _$GetAllAdvertisementFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllAdvertisementToJson(this);
}

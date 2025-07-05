import 'package:edu_college/domain/model/courses/get_all_couses/get_all_couses.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_whishlists.g.dart';

@JsonSerializable()
class GetAllWhishlists {
  GetAllCouses? courseId;
  @JsonKey(name: '_id')
  String? id;
  DateTime? addedAt;

  GetAllWhishlists({this.courseId, this.id, this.addedAt});

  factory GetAllWhishlists.fromJson(Map<String, dynamic> json) {
    return _$GetAllWhishlistsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllWhishlistsToJson(this);
}

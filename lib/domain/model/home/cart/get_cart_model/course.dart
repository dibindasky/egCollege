import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Coursemodel {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? image;
  String? universityname;
  String? totaltuitionfee;
  String? scholarship;
  String? registrationfee;
  String? semesterfee;
  bool? isYearly; // New field added

  Coursemodel(
      {this.id,
      this.name,
      this.image,
      this.universityname,
      this.totaltuitionfee,
      this.scholarship,
      this.registrationfee,
      this.semesterfee,
      this.isYearly});

  factory Coursemodel.fromJson(Map<String, dynamic> json) {
    return _$CourseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}

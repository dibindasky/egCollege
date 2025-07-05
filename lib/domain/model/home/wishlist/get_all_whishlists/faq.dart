import 'package:json_annotation/json_annotation.dart';

part 'faq.g.dart';

@JsonSerializable()
class Faq {
  @JsonKey(name: '_id')
  String? id;
  String? question;
  String? answer;

  Faq({this.id, this.question, this.answer});

  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);

  Map<String, dynamic> toJson() => _$FaqToJson(this);
}

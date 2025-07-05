import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

part 'get_service.g.dart';

@JsonSerializable()
class GetService {
  Data? data;

  GetService({this.data});

  factory GetService.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}

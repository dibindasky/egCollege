import 'package:json_annotation/json_annotation.dart';

import 'service.dart';

part 'get_all_services.g.dart';

@JsonSerializable()
class GetAllServices {
  List<Service>? data;

  GetAllServices({this.data});

  factory GetAllServices.fromJson(Map<String, dynamic> json) {
    return _$GetAllServicesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllServicesToJson(this);
}

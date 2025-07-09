import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  List<Notification>? data;
  int? length;

  NotificationModel({this.data, this.length});

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

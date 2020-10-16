import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));
String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  String icon;
  String title;
  String description;
  String page;

  NotificationModel({
      this.icon,
      this.title,
      this.description,
      this.page,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
      icon         : json["icon"],
      title        : json["title"],
      description   : json["description"],
      page          : json["page"],
  );

  Map<String, dynamic> toJson() => {
      "icon"       : icon,
      "title"      : title,
      "description" : description,
      "page"        : page,
  };
}

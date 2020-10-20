import 'dart:convert';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));
String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());

class NotificationModel {
  int id;
  String title;
  String description;
  String page;
  String icon;

  NotificationModel({
      this.id,
      this.title,
      this.description,
      this.page,
      this.icon,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
      id         : json["id"],
      title        : json["title"],
      description   : json["description"],
      page          : json["page"],
      icon         : json["icon"],
  );

  Map<String, dynamic> toJson() => {
      "id"       : id,
      "title"      : title,
      "description" : description,
      "page"        : page,
      "icon"       : icon,
  };
}

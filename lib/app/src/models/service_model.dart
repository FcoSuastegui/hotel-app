import 'dart:convert';

ServiceModel serviceModelFromJson(String str) => ServiceModel.fromJson(json.decode(str));
String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  ServiceModel({
      this.image,
      this.name,
      this.page,
  });

  String image;
  String name;
  String page;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
      image: json["image"],
      name: json["name"],
      page: json["page"],
  );

  Map<String, dynamic> toJson() => {
      "image": image,
      "name": name,
      "page": page,
  };
}

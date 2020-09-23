import 'dart:convert';

HotelsModel hotelsModelFromJson(String str) => HotelsModel.fromJson(json.decode(str));

String hotelsModelToJson(HotelsModel data) => json.encode(data.toJson());

class HotelsModel {
  String name;
  String image;
  int stars;
  String description;
  int rooms;

  HotelsModel({
      this.name,
      this.image,
      this.stars,
      this.description,
      this.rooms,
  });

  factory HotelsModel.fromJson(Map<String, dynamic> json) => HotelsModel(
      name          : json["name"],
      image         : json["image"],
      stars         : json["stars"],
      description   : json["description"],
      rooms         : json["rooms"],
  );

  Map<String, dynamic> toJson() => {
      "name"          : name,
      "image"         : image,
      "stars"         : stars,
      "description"   : description,
      "rooms"         : rooms,
  };
}

import 'dart:convert';

PlaceModel placeModelFromJson(String str) => PlaceModel.fromJson(json.decode(str));

String placeModelToJson(PlaceModel data) => json.encode(data.toJson());

class PlaceModel {
  PlaceModel({
      this.image,
      this.name,
      this.place,
      this.description,
      this.stars,
      this.price,
      this.page,
  });

  String image;
  String name;
  String place;
  String description;
  int stars;
  int price;
  String page;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
      image: json["image"],
      name: json["name"],
      place: json["place"],
      description: json["description"],
      stars: json["stars"],
      price: json["price"],
      page: json["page"],
  );

  Map<String, dynamic> toJson() => {
      "image": image,
      "name": name,
      "place": place,
      "description": description,
      "stars": stars,
      "price": price,
      "page": page,
  };
}

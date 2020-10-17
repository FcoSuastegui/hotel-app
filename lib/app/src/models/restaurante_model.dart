import 'dart:convert';

RestauranteModel restauranteModelFromJson(String str) =>
    RestauranteModel.fromJson(json.decode(str));

String restauranteModelToJson(RestauranteModel data) =>
    json.encode(data.toJson());

class RestauranteModel {
  RestauranteModel({
    this.image,
    this.name,
    this.place,
    this.description,
    this.stars,
    this.banner,
    this.price,
    this.discount,
    this.services,
  });

  String image;
  String name;
  String place;
  String description;
  int stars;
  String banner;
  int price;
  int discount;
  String services;

  factory RestauranteModel.fromJson(Map<String, dynamic> json) =>
      RestauranteModel(
        image: json["image"],
        name: json["name"],
        place: json["place"],
        description: json["description"],
        stars: json["stars"],
        banner: json["banner"],
        price: json["price"],
        discount: json["discount"],
        services: json["services"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "place": place,
        "description": description,
        "stars": stars,
        "banner": banner,
        "price": price,
        "discount": discount,
        "services": services,
      };
}

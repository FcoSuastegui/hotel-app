import 'dart:convert';

ActividadModel actividadModelFromJson(String str) =>
    ActividadModel.fromJson(json.decode(str));

String actividadModelToJson(ActividadModel data) => json.encode(data.toJson());

class ActividadModel {
  ActividadModel({
    this.image,
    this.name,
    this.place,
    this.description,
    this.stars,
    this.banner,
    this.price,
    this.discount,
    this.page,
  });

  String image;
  String name;
  String place;
  String description;
  int stars;
  String banner;
  int price;
  int discount;
  String page;

  factory ActividadModel.fromJson(Map<String, dynamic> json) => ActividadModel(
        image: json["image"],
        name: json["name"],
        place: json["place"],
        description: json["description"],
        stars: json["stars"],
        banner: json["banner"],
        price: json["price"],
        discount: json["discount"],
        page: json["page"],
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
        "page": page,
      };
}

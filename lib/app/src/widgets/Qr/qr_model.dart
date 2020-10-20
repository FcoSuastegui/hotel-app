import 'dart:convert';

QrModel qrModelFromJson(String str) => QrModel.fromJson(json.decode(str));
String qrModelToJson(QrModel data) => json.encode(data.toJson());

class QrModel {
  String title;
  String data;
  String description;

  QrModel({
    this.title,
    this.data,
    this.description
  });

  factory QrModel.fromJson(Map<String, dynamic> json) => QrModel(
      title         : json["title"],
      data          : json["data"],
      description   : json["description"],
  );

  Map<String, dynamic> toJson() => {
      "title"           : title,
      "data"            : data,
      "description"     : description,
  };
}

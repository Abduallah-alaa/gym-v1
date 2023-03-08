// To parse this JSON data, do
//
//     final trainersModel = trainersModelFromJson(jsonString);

import 'dart:convert';

TrainersModel trainersModelFromJson(String str) =>
    TrainersModel.fromJson(json.decode(str));

String trainersModelToJson(TrainersModel data) => json.encode(data.toJson());

class TrainersModel {
  TrainersModel({
    required this.success,
    required this.data,
    required this.message,
  });

  bool success;
  List<Datum> data;
  String message;

  factory TrainersModel.fromJson(Map<String, dynamic> json) => TrainersModel(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  Datum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.shortDescription,
    required this.image,
    required this.userType,
    required this.isTop,
  });

  int id;
  String firstName;
  String lastName;
  String shortDescription;
  String image;
  String userType;
  int isTop;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        shortDescription: json["short_description"],
        image: json["image"],
        userType: json["user_type"],
        isTop: json["is_top"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "short_description": shortDescription,
        "image": image,
        "user_type": userType,
        "is_top": isTop,
      };
}

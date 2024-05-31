// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  final String uid;
  final String username;
  final String password;
  final String email;
  final String phonenumber;
  final String sex;

  User({
    required this.uid,
    required this.username,
    required this.password,
    required this.email,
    required this.phonenumber,
    required this.sex,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        uid: json["id"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
        phonenumber: json["phonenumber"],
        sex: json["sex"],
      );

  Map<String, dynamic> toJson() => {
        "id": uid,
        "username": username,
        "password": password,
        "email": email,
        "phonenumber": phonenumber,
        "sex": sex,
      };
}

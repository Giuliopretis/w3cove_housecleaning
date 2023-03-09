// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

User userFromMap(String str) => User.fromMap(json.decode(str));

String userToMap(User data) => json.encode(data.toMap());

class User {
  User({
    required this.name,
  });

  final String name;

  factory User.fromMap(Map<String, dynamic> json) => User(
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
      };
}

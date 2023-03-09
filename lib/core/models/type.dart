// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

Type userFromMap(String str) => Type.fromMap(json.decode(str));

String userToMap(Type data) => json.encode(data.toMap());

class Type {
  Type({
    required this.label,
  });

  final String label;

  factory Type.fromMap(Map<String, dynamic> json) => Type(
        label: json["label"],
      );

  Map<String, dynamic> toMap() => {
        "label": label,
      };
}

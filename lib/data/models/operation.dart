// To parse this JSON data, do
//
//     final operation = operationFromMap(jsonString);

import 'dart:convert';

Operation operationFromMap(String str) => Operation.fromMap(json.decode(str));

String operationToMap(Operation data) => json.encode(data.toMap());

class Operation {
  Operation({
    required this.type,
    required this.user,
    required this.date,
  });

  final String type;
  final String user;
  final DateTime date;

  factory Operation.fromMap(Map<String, dynamic> json) => Operation(
        type: json["type"],
        user: json["user"],
        date: json["date"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "user": user,
        "date": date,
      };
}

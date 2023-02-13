// To parse this JSON data, do
//
//     final operation = operationFromMap(jsonString);

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w3cove_housecleaning/data/models/user.dart';
import 'package:w3cove_housecleaning/data/models/type.dart';

Operation operationFromMap(String str) => Operation.fromMap(json.decode(str));

String operationToMap(Operation data) => json.encode(data.toMap());

class Operation {
  Operation({
    required this.type,
    required this.user,
    required this.date,
  });

  final Type type;
  final User user;
  final Timestamp date;

  factory Operation.fromMap(Map<String, dynamic> json) {
    return Operation(
      type: Type.fromMap(json["type"]),
      user: User.fromMap(json["user"]),
      date: json["date"],
    );
  }

  Map<String, dynamic> toMap() => {
        "type": type,
        "user": user,
        "date": date,
      };
}

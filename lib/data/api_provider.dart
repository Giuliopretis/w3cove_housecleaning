import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w3cove_housecleaning/data/models/operation.dart';
import 'package:w3cove_housecleaning/globals.dart';

class ApiProvider {
  static var db = FirebaseFirestore.instance;

  void getOperationsList() async {
    // Future<List<Operation>> getOperationsList() async {
    var users = await db.collection(userCollection).get();
    print(users);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w3cove_housecleaning/data/models/operation.dart';
import 'package:w3cove_housecleaning/globals.dart';

class ApiProvider {
  static var db = FirebaseFirestore.instance;

  Future<List<Operation>> getOperationsList() async {
    List<Operation> operations = [];
    try {
      var op = await db.collection(operationCollection).get();
      for (var operationJson in op.docs) {
        var data = operationJson.data();
        var type = operationJson.data()['type'];
        var user = operationJson.data()['user'];
        String typePath = type.path;
        String userPath = user.path;
        var userData = await db.doc(userPath).get();
        var typeData = await db.doc(typePath).get();
        data['user'] = userData.data();
        data['type'] = typeData.data();
        operations.add(Operation.fromMap(data));
      }
      return operations;
    } catch (e) {
      return operations;
    }
  }
}

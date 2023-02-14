import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:w3cove_housecleaning/data/models/operation.dart';
import 'package:w3cove_housecleaning/data/states/operations_state.dart';
import 'package:w3cove_housecleaning/presentation/resources/value_manager.dart';

class OperationsList extends StatefulWidget {
  const OperationsList({super.key});

  @override
  State<OperationsList> createState() => _OperationsListState();
}

class _OperationsListState extends State<OperationsList> {
  @override
  Widget build(BuildContext context) {
    final OperationsStateController stateController = Get.find();

    return Obx(() {
      return ListView.builder(
          itemCount: stateController.operations.length,
          itemBuilder: (_, int index) {
            Operation operation = stateController.operations[index];
            String date = DateFormat('d/M/y')
                .format(DateTime.parse(operation.date.toDate().toString()))
                .toString();
            return Card(
              child: ListTile(
                title: Text(operation.user.name),
                subtitle: Text(date),
                onTap: () {},
                trailing: Text(operation.type.label),
              ),
            );
          });
    });
  }
}

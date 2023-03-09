import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:w3cove_housecleaning/core/models/operation.dart';
import 'package:w3cove_housecleaning/viewmodels/operation_view_model.dart';
import 'package:w3cove_housecleaning/ui/resources/value_manager.dart';

class OperationsList extends StatefulWidget {
  const OperationsList({super.key});

  @override
  State<OperationsList> createState() => _OperationsListState();
}

class _OperationsListState extends State<OperationsList> {
  @override
  Widget build(BuildContext context) {
    final OperationsListViewModel operationViewModel = Get.find();

    return Obx(() {
      return ListView.builder(
          itemCount: operationViewModel.operations.length,
          itemBuilder: (_, int index) {
            Operation operation = operationViewModel.operations[index];
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

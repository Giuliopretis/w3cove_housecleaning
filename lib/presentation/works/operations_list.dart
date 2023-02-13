import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w3cove_housecleaning/data/states/operations_state.dart';

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
        itemBuilder: (_, int index) =>
            Text(stateController.operations[index].type.label),
      );
    });
  }
}

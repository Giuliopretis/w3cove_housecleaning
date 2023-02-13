import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w3cove_housecleaning/data/api_provider.dart';
import 'package:w3cove_housecleaning/data/states/operations_state.dart';
import 'package:w3cove_housecleaning/presentation/works/operations_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiProvider _apiProvider = ApiProvider();
  final OperationsStateController _stateController =
      Get.put(OperationsStateController());

  @override
  void initState() {
    super.initState();
    _apiProvider.getOperationsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola'),
      ),
      body: const OperationsList(),
    );
  }
}

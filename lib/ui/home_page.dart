import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/services/api_service.dart';
import '../viewmodels/operation_view_model.dart';
import 'operations/add_operation_form.dart';
import 'operations_list/operations_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService _apiProvider = ApiService();
  final OperationsListViewModel _operationViewModel =
      Get.put(OperationsListViewModel());

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
      floatingActionButton: FloatingActionButton(
        onPressed: openAddOperationModal,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        child: const Icon(Icons.add),
      ),
    );
  }

  openAddOperationModal() {
    showDialog(
      context: context,
      builder: (ctx) => Dialog.fullscreen(
        insetAnimationCurve: Curves.bounceIn,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(ctx),
                    icon: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
            Text(
              'Inserisci la tua attività',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Expanded(child: AddOperationForm()),
          ],
        ),
      ),
    );
  }
}

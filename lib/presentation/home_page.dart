import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w3cove_housecleaning/data/api_provider.dart';
import 'package:w3cove_housecleaning/presentation/operations/operation_view_model.dart';
import 'package:w3cove_housecleaning/presentation/operations/operations_list.dart';
import 'package:w3cove_housecleaning/presentation/operations/add_operation_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiProvider _apiProvider = ApiProvider();
  final OperationViewModel _operationViewModel = Get.put(OperationViewModel());

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

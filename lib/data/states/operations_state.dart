import 'package:get/get.dart';
import 'package:w3cove_housecleaning/data/api_provider.dart';
import 'package:w3cove_housecleaning/data/models/operation.dart';

class OperationsStateController extends GetxController {
  final ApiProvider _apiProvider = ApiProvider();
  RxList<Operation> operations = <Operation>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchOperations();
  }

  fetchOperations() async {
    operations.value = await _apiProvider.getOperationsList();
  }
}

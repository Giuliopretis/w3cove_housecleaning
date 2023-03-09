import 'package:get/get.dart';
import 'package:w3cove_housecleaning/core/services/api_service.dart';
import 'package:w3cove_housecleaning/core/models/operation.dart';

class OperationsListViewModel extends GetxController {
  final ApiService _apiProvider = ApiService();
  RxList<Operation> operations = <Operation>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchOperations();
  }

  fetchOperations() async {
    try {
      operations.value = await _apiProvider.getOperationsList();
    } catch (e) {
      rethrow;
    }
  }
}

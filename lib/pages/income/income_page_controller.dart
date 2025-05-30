import 'package:get/get.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/models/user.dart';

class IncomePageController extends GetxController {
  final IncomeController _incomeController = Get.find<IncomeController>();

  Stream<List<IncomeQueryDocumentSnapshot>> fetchIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeController.getAll(assessmentSnapshot);
  }
}

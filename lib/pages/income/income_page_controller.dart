import 'package:get/get.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/models/user.dart';

class IncomePageController extends GetxController {
  final IncomeController _incomeController = Get.find<IncomeController>();

  Future<void> addIncome(AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    final income = Income(
      day: 22,
      description: 'Lanche',
      type: 'expense',
      cast: 15,
    );

    await _incomeController.store(income, assessmentSnapshot);
  }

  Stream<List<IncomeQueryDocumentSnapshot>> fetchIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeController.getAll(assessmentSnapshot);
  }
}

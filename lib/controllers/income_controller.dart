import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/income_service.dart';

class IncomeController {
  final IncomeService _incomeService;

  IncomeController(this._incomeService);

  Future<void> store(Income income, AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    try {
      await _incomeService.createIncome(income, assessmentSnapshot);
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<IncomeQueryDocumentSnapshot>> getAll(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeService.getAllIncomes(assessmentSnapshot);
  }
}

import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/income_service.dart';

class IncomeController {
  final IncomeService _incomeService;
  final Authenticatable _user;

  IncomeController(this._incomeService, this._user);

  Future<void> store(Income income, DateTime date) async {
    try {
      await _incomeService.createIncome(_user, income, date);
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<IncomeQueryDocumentSnapshot>> getAll(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeService.getAllIncomes(assessmentSnapshot);
  }

  Future<double> getIncomeBalance() {
    try {
      return _incomeService.calculateUserIncomeBalance(_user);
    } catch (e) {
      rethrow;
    }
  }
}

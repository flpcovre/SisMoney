import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';
import 'package:sismoney/services/contracts/income_service.dart';

class IncomeServiceImpl implements IncomeService {
  final IncomeRepository _incomeRepository;
  final AssessmentService _assessmentService;

  IncomeServiceImpl(this._incomeRepository, this._assessmentService);

  @override
  Future<void> createIncome(Authenticatable user, Income income, DateTime date) async {
    final assessmentSnapshot = await _assessmentService.ensureAssessmentByMonthYear(user, date);
    await _incomeRepository.createByAssessment(income, assessmentSnapshot);
  }
  
  @override
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeRepository.getAllByAssessment(assessmentSnapshot);
  }
  
  @override
  Future<double> calculateUserIncomeBalance(Authenticatable user) async {
    final List<IncomeQueryDocumentSnapshot> incomes = await _incomeRepository.getAllByUser(user);

    double total = 0.0;

    for (final income in incomes) {
      final cast = income.data.cast;
      final type = income.data.type;

      if (type == 'profit') {
        total += cast;
      } else if (type == 'expense') {
        total -= cast;
      }
    }
    
    return total;
  }
}

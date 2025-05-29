import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';
import 'package:sismoney/services/contracts/income_service.dart';

class IncomeServiceImpl implements IncomeService {
  final IncomeRepository _incomeRepository;

  IncomeServiceImpl(this._incomeRepository);

  @override
  Future<void> createIncome(Income income) async {
    // await _incomeRepository.createIncomeByAssessment(income);
  }
  
  @override
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeRepository.getAllIncomesByAssessment(assessmentSnapshot);
  }
}

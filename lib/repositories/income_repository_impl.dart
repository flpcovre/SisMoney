import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';

class IncomeRepositoryImpl implements IncomeRepository {
  @override
  Future<void> createIncomeByAssessment(Income income, AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    await assessmentSnapshot
            .reference
            .incomes
            .add(income);
  }
  
  @override
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomesByAssessment(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return assessmentSnapshot
            .reference
            .incomes
            .orderByDay(descending: true)
            .snapshots()
            .map((snapshot) => snapshot.docs);
  }
}
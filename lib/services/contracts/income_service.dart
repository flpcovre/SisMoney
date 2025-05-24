import 'package:sismoney/models/user.dart';

abstract class IncomeService {
  Future<void> createIncome(Income income,AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot);
}

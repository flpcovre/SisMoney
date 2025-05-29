import 'package:sismoney/models/user.dart';

abstract class IncomeService {
  Future<void> createIncome(Income income);
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot);
}

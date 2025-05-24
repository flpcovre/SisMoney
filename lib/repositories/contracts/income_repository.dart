import 'package:sismoney/models/user.dart';

abstract class IncomeRepository {
  Future<void> createIncomeByAssessment(Income income,AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomesByAssessment(AssessmentQueryDocumentSnapshot assessmentSnapshot);
}

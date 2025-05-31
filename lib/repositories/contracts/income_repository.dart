import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class IncomeRepository {
  Future<void> createByAssessment(Income income,AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Stream<List<IncomeQueryDocumentSnapshot>> getAllByAssessment(AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Future<List<IncomeQueryDocumentSnapshot>> getAllByUser(Authenticatable user);
}

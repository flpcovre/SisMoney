import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class IncomeService {
  Future<void> createIncome(Authenticatable user,Income income, DateTime date);
  Stream<List<IncomeQueryDocumentSnapshot>> getAllIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Future<List<Income>> getIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot);
  Future<double> calculateUserIncomeBalance(Authenticatable user);
}

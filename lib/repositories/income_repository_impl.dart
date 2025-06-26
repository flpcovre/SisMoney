import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';

class IncomeRepositoryImpl implements IncomeRepository {
  @override
  Future<void> createByAssessment(Income income, AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    await assessmentSnapshot
            .reference
            .incomes
            .add(income);
  }
  
  @override
  Stream<List<IncomeQueryDocumentSnapshot>> getAllByAssessment(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return assessmentSnapshot
            .reference
            .incomes
            .orderByDay(descending: true)
            .snapshots()
            .map((snapshot) => snapshot.docs);
  }

  @override
  Future<List<IncomeQueryDocumentSnapshot>> getAllByUser(Authenticatable user) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final assessmentSnapshots = await usersRef.doc(userId).assessments.get();

    final List<IncomeQueryDocumentSnapshot> allIncomes = [];

    for (final assessment in assessmentSnapshots.docs) {
      final incomesSnapshot = await assessment.reference.incomes.get();
      allIncomes.addAll(incomesSnapshot.docs);
    }

    return allIncomes;
  }
  
  @override
  Future<List<Income>> getAllObjectsByAssessments(AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    final snapshot = await assessmentSnapshot
                            .reference
                            .incomes
                            .orderByDay(descending: true)
                            .get();
                      
    return snapshot.docs.map((doc) => doc.data).toList();
  }
}

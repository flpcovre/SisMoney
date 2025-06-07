import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {

  @override
  Stream<List<AssessmentQueryDocumentSnapshot>> getAllByUser(Authenticatable user) async* {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    yield* usersRef
      .doc(userId)
      .assessments
      .orderByYear(descending: true)
      .orderByMonth(descending: true)
      .snapshots()
      .map((snapshot) => snapshot.docs);
  }
  
  @override
  Future<Assessment> create(Authenticatable user, Assessment assessment) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final assessmentCollection = usersRef.doc(userId).assessments;
    await assessmentCollection.add(assessment);

    return assessment;
  }
  
  @override
  Future<AssessmentQueryDocumentSnapshot?> getOneByMonthYear(Authenticatable user, DateTime date) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final snapshot = await usersRef
      .doc(userId)
      .assessments
      .whereMonth(isEqualTo: date.month)
      .whereYear(isEqualTo: date.year)
      .get();

    return snapshot.docs.isEmpty ? null : snapshot.docs.first;
  }
  
  @override
  Future<AssessmentQueryDocumentSnapshot?> getOneInProgress(Authenticatable user) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final snapshot = await usersRef
                              .doc(userId)
                              .assessments
                              .whereInProgress(isEqualTo: true)
                              .get();
    
    return snapshot.docs.isEmpty ? null : snapshot.docs.first; 
  }
  
  @override
  Future<void> endByMonthYear(Authenticatable user, Assessment assessment) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final assessmentsQuery = await usersRef
        .doc(userId)
        .assessments
        .whereMonth(isEqualTo: assessment.month)
        .whereYear(isEqualTo: assessment.year)
        .whereInProgress(isEqualTo: true)
        .get();

    if (assessmentsQuery.docs.isNotEmpty) {
      final existing = assessmentsQuery.docs.first;
      await existing.reference.update(inProgress: false);
    }
  }
  
  @override
  Future<void> createEndBalance(double balance, AssessmentQueryDocumentSnapshot snapshot) async {
    await snapshot.reference.update(endBalance: balance); 
  }
}

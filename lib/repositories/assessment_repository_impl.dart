import 'package:sismoney/models/contracts/autenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {

  @override
  Stream<List<Assessment>> getAllAssessmentsByUser(Autenticatable user) async* {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    yield* usersRef.doc(userId).assessments
      .snapshots().map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
  }
  
  @override
  Future<Assessment> createAssessment(Autenticatable user, Assessment assessment) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final assessmentCollection = usersRef.doc(userId).assessments;
    await assessmentCollection.add(assessment);

    return assessment;
  }
}

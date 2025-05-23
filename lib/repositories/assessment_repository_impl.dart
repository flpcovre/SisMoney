import 'package:sismoney/models/assessment.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {
  @override
  Stream<List<Assessment>> getAllAssessmentsByUser() {
    return assessmentsRef
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
  }
  
  @override
  Future<Assessment> createAssessment() {
    // TODO: implement createAssessment
    throw UnimplementedError();
  }
}

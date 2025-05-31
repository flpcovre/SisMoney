import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentService {
  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments(Authenticatable user);
  Future<AssessmentQueryDocumentSnapshot> ensureAssessmentByMonthYear(Authenticatable user, DateTime date);
  Future<void> endAssessment(Authenticatable user,Assessment assessment);
}
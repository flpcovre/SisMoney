import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentService {
  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments(Authenticatable user);
  Future<AssessmentQueryDocumentSnapshot?> getByMonthYear(Authenticatable user,int month, int year);
  Future<AssessmentQueryDocumentSnapshot> ensureAssessmentByMonthYear(Authenticatable user, DateTime date);
  Future<void> endAssessment(Authenticatable user,Assessment assessment);
  Future<void> setBotResponse(AssessmentQueryDocumentSnapshot assessment, String response);
}
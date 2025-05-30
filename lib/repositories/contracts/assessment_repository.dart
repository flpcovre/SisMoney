import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentRepository {
  Stream<List<AssessmentQueryDocumentSnapshot>> getAllAssessmentsByUser(Authenticatable user);
  Future<AssessmentQueryDocumentSnapshot?> getOneAsssessmentByMonthYear(Authenticatable user, DateTime date);
  Future<Assessment> createAssessment(Authenticatable user, Assessment assessment);
  Future<AssessmentQueryDocumentSnapshot?> getOneAssessmentInProgress(Authenticatable user);
}
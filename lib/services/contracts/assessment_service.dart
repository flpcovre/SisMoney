import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentService {
  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments(Authenticatable user);
  Future<Assessment> createAssessment(Authenticatable user, Assessment assessment);
}
import 'package:sismoney/models/contracts/autenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentService {
  Stream<List<Assessment>> getAssessments(Autenticatable user);
  Future<Assessment> createAssessment(Autenticatable user, Assessment assessment);
}
import 'package:sismoney/models/contracts/autenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentRepository {
  Stream<List<Assessment>> getAllAssessmentsByUser(Autenticatable user);
  Future<Assessment> createAssessment(Autenticatable user, Assessment assessment);
}
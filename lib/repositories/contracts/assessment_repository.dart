import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AssessmentRepository {
  Stream<List<Assessment>> getAllAssessmentsByUser(Authenticatable user);
  Future<Assessment> createAssessment(Authenticatable user, Assessment assessment);
}
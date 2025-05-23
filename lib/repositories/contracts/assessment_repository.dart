import 'package:sismoney/models/assessment.dart';

abstract class AssessmentRepository {
  Stream<List<Assessment>> getAllAssessmentsByUser();
  Future<Assessment> createAssessment();
}
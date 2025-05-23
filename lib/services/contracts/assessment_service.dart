import 'package:sismoney/models/assessment.dart';

abstract class AssessmentService {
  Stream<List<Assessment>> getAssessments();
}
import 'package:sismoney/models/assessment.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentController {
  final AssessmentService _assessmentService;

  AssessmentController(this._assessmentService);

  Stream<List<Assessment>> getAll() {
    final assessments = _assessmentService.getAssessments();
    return assessments;
  }

  Future<void> post() async {
    
  }
}
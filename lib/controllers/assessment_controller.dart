import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentController {
  final AssessmentService _assessmentService;
  final Authenticatable _user;

  AssessmentController(this._assessmentService, this._user);

  Stream<List<Assessment>> getAll() {
    final assessments = _assessmentService.getAssessments(_user);
    return assessments;
  }

  Future<void> post(Assessment assessment) async {
    _assessmentService.createAssessment(_user, assessment);
  }
}
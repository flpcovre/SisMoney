import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';

class AssessmentController {
  final AssessmentService _assessmentService;
  final Authenticatable _user;

  AssessmentController(this._assessmentService, this._user);

  Stream<List<AssessmentQueryDocumentSnapshot>> getAll() {
    final assessments = _assessmentService.getAssessments(_user);
    return assessments;
  }

  Future<AssessmentQueryDocumentSnapshot?> fetchByMonthYear(int month, int year) async {
    try {
      return await _assessmentService.getByMonthYear(_user, month, year);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> defineBotResponse(AssessmentQueryDocumentSnapshot assessment, String response) async {
    await _assessmentService.setBotResponse(assessment, response);
  }

  Future<void> end(Assessment assessment) async {
    try {
      await _assessmentService.endAssessment(_user, assessment);
    } catch (e) {
      rethrow;
    }
  }
}
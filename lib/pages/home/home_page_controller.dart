import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/models/user.dart';

class HomePageController extends GetxController {
  final AssessmentController _assessmentController = Get.find<AssessmentController>();

  Future<void> addAssessment() async {
    final assessment = Assessment(month: 5, year: 2025, inProgress: true);
    _assessmentController.store(assessment);
  }

  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments() {
    return _assessmentController.getAll();
  }
}
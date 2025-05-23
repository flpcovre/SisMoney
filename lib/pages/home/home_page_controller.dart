import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/models/user.dart';

class HomePageController extends GetxController {
  final AssessmentController _assessmentController = Get.find<AssessmentController>();

  Future<void> addAssessment() async {
    final assessment = Assessment(id: 1, startDate: DateTime(2025, 05, 23), endDate: DateTime(2025, 05, 24), percent: 40, profit: true);
    _assessmentController.post(assessment);
  }

  Stream<List<Assessment>> getAssessments() {
    return _assessmentController.getAll();
  }
}
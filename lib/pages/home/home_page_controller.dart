import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/models/user.dart';

class HomePageController extends GetxController {
  final AssessmentController _assessmentController = Get.find<AssessmentController>();

  Stream<List<AssessmentQueryDocumentSnapshot>> getAssessments() {
    return _assessmentController.getAll();
  }
}
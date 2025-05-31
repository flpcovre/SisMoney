import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/models/user.dart';

class IncomePageController extends GetxController {
  final IncomeController _incomeController = Get.find<IncomeController>();
  final AssessmentController _assessmentController = Get.find<AssessmentController>();

  RxBool inProgress = true.obs;

  void initialize(bool initialInProgress) {
    inProgress.value = initialInProgress;
  }

  Stream<List<IncomeQueryDocumentSnapshot>> fetchIncomes(AssessmentQueryDocumentSnapshot assessmentSnapshot) {
    return _incomeController.getAll(assessmentSnapshot);
  }

  Future<void> endAssessment(AssessmentQueryDocumentSnapshot assessmentSnapshot) async {
    final Assessment assessment = Assessment(
      month: assessmentSnapshot.data.month, 
      year: assessmentSnapshot.data.year, 
      inProgress: assessmentSnapshot.data.inProgress
    );

    await _assessmentController.end(assessment);
    inProgress.value = false;
  }
}

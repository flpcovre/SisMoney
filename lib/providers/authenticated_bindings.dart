import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/controllers/user_controller.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';

class AuthenticatedBindings extends Bindings {
  final Authenticatable user;

  AuthenticatedBindings(this.user);

  @override
  void dependencies() {
    Get.put<Authenticatable>(user);

    Get.lazyPut<UserController>(() => UserController(Get.find(), Get.find()));
    Get.lazyPut<QuestionController>(() => QuestionController(Get.find()));
    Get.lazyPut<AssessmentController>(() => AssessmentController(Get.find(), Get.find()));
    Get.lazyPut<IncomeController>(() => IncomeController(Get.find(), Get.find()));
  }
}

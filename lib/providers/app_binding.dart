import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/assessment_repository_impl.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';
import 'package:sismoney/repositories/income_repository_impl.dart';
import 'package:sismoney/repositories/question_repository_impl.dart';
import 'package:sismoney/services/assessment_service_impl.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';
import 'package:sismoney/services/contracts/income_service.dart';
import 'package:sismoney/services/contracts/question_service.dart';
import 'package:sismoney/services/income_service_impl.dart';
import 'package:sismoney/services/question_service_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    /// Models
    Get.lazyPut<Authenticatable>(
      () => User(name: 'Filipe', email: 'filipecovre224@gmail.com'),
    );

    ///  Repositories
    Get.lazyPut<QuestionRepository>(() => QuestionRepositoryImpl());
    Get.lazyPut<AssessmentRepository>(() => AssessmentRepositoryImpl());
    Get.lazyPut<IncomeRepository>(() => IncomeRepositoryImpl());

    /// Services
    Get.lazyPut<QuestionService>(() => QuestionServiceImpl(Get.find()));
    Get.lazyPut<AssessmentService>(() => AssessmentServiceImpl(Get.find()));
    Get.lazyPut<IncomeService>(() => IncomeServiceImpl(Get.find()));

    /// Controllers
    Get.put(QuestionController(Get.find()));
    Get.put(AssessmentController(Get.find(), Get.find()));
    Get.put(IncomeController(Get.find()));
  }
}

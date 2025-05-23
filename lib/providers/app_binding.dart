import 'package:get/get.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/contracts/autenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/assessment_repository_impl.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';
import 'package:sismoney/repositories/question_repository_impl.dart';
import 'package:sismoney/services/assessment_service_impl.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';
import 'package:sismoney/services/contracts/question_service.dart';
import 'package:sismoney/services/question_service_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    /// Models
    Get.lazyPut<Autenticatable>(() => User(name: 'Filipe', email: 'filipecovre224@gmail.com'));

    ///  Repositories
    Get.lazyPut<QuestionRepository>(() => QuestionRepositoryImpl());
    Get.lazyPut<AssessmentRepository>(() => AssessmentRepositoryImpl());

    /// Services
    Get.lazyPut<QuestionService>(() => QuestionServiceImpl(Get.find()));
    Get.lazyPut<AssessmentService>(() => AssessmentServiceImpl(Get.find()));

    /// Controllers
    Get.put(QuestionController(Get.find()));
    Get.put(AssessmentController(Get.find(), Get.find()));
  }
}
import 'package:get/get.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';
import 'package:sismoney/repositories/question_repository_impl.dart';
import 'package:sismoney/services/contracts/question_service.dart';
import 'package:sismoney/services/question_service_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    ///  Repositories
    Get.lazyPut<QuestionRepository>(() => QuestionRepositoryImpl());

    /// Services
    Get.lazyPut<QuestionService>(() => QuestionServiceImpl(Get.find()));

    /// Controllers
    Get.put(QuestionController(Get.find()));
  }
}
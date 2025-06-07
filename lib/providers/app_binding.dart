import 'package:get/get.dart';
import 'package:sismoney/controllers/auth_controller.dart';
import 'package:sismoney/integrations/google/auth/contracts/authentication.dart';
import 'package:sismoney/integrations/google/auth/contracts/external_provider_authentication.dart';
import 'package:sismoney/integrations/google/auth/firebase_auth.dart';
import 'package:sismoney/integrations/google/auth/google_auth.dart';
import 'package:sismoney/integrations/openai/completions/create_default_chat_completion.dart';
import 'package:sismoney/integrations/requests/contracts/api_contract.dart';
import 'package:sismoney/integrations/requests/http_request.dart';
import 'package:sismoney/repositories/answer_repository_impl.dart';
import 'package:sismoney/repositories/assessment_repository_impl.dart';
import 'package:sismoney/repositories/contracts/answer_repository.dart';
import 'package:sismoney/repositories/contracts/assessment_repository.dart';
import 'package:sismoney/repositories/contracts/income_repository.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';
import 'package:sismoney/repositories/question_repository_impl.dart';
import 'package:sismoney/repositories/user_repository_impl.dart';
import 'package:sismoney/services/answer_service_impl.dart';
import 'package:sismoney/services/assessment_service_impl.dart';
import 'package:sismoney/services/contracts/answer_service.dart';
import 'package:sismoney/services/contracts/assessment_service.dart';
import 'package:sismoney/services/contracts/income_service.dart';
import 'package:sismoney/services/contracts/question_service.dart';
import 'package:sismoney/services/contracts/user_service.dart';
import 'package:sismoney/services/income_service_impl.dart';
import 'package:sismoney/services/question_service_impl.dart';
import 'package:sismoney/repositories/contracts/user_repository.dart';
import 'package:sismoney/repositories/income_repository_impl.dart';
import 'package:sismoney/services/user_service_impl.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    ///  Repositories
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut<QuestionRepository>(() => QuestionRepositoryImpl());
    Get.lazyPut<AssessmentRepository>(() => AssessmentRepositoryImpl());
    Get.lazyPut<IncomeRepository>(() => IncomeRepositoryImpl());
    Get.lazyPut<AnswerRepository>(() => AnswerRepositoryImpl());

    /// Services
    Get.lazyPut<UserService>(() => UserServiceImpl(Get.find()));
    Get.lazyPut<QuestionService>(() => QuestionServiceImpl(Get.find()));
    Get.lazyPut<AssessmentService>(() => AssessmentServiceImpl(Get.find()));
    Get.lazyPut<IncomeService>(() => IncomeServiceImpl(Get.find(), Get.find()));
    Get.lazyPut<AnswerService>(() => AnswerServiceImpl(Get.find()));
    Get.lazyPut<Authentication>(() => AppFirebaseAuth(Get.find()));
    Get.lazyPut<ExternalProviderAuthentication>(() => GoogleAuth(Get.find()));

    /// Controllers
    Get.put(AuthController(Get.find(), Get.find()));

    /// Integrations
    Get.lazyPut<ApiContract>(() => HttpRequest());
    Get.lazyPut<CreateDefaultChatCompletion>(() => CreateDefaultChatCompletion(Get.find()));
  }
}

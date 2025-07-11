import 'package:get/get.dart';
import 'package:sismoney/controllers/answer_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/question.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/routes/router_app.dart';

class QuestionsPageController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxMap<int, int> answers = <int, int>{}.obs;
  RxBool questionsAnswered = false.obs;
  var isSaving = false.obs;

  final QuestionController _questionController = Get.find<QuestionController>();
  final AnswerController _answerController = Get.find<AnswerController>();

  @override
  void onInit() {
    super.onInit();
  }
  
  Future<List<Question>> loadQuestions() async {
    final questions = await _questionController.fetch();
    return questions;
  }

  Future<void> saveAnswers() async {
    final List<Answer> answersToObject = [];

    answers.forEach((key, value) {
      final answer = Answer(questionId: key, alternativeId: value);
      answersToObject.add(answer);
    });

    try {
      await _answerController.store(answersToObject);
      Get.toNamed(RouterApp.home);
    } catch (e) {
      rethrow;
    }

  }
}

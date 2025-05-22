import 'package:get/get.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/question.dart';

class QuestionsPageController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxMap<int, String> answers = <int, String>{}.obs;
  RxBool questionsAnswered = false.obs;

  final QuestionController _questionController = Get.find<QuestionController>();

  RxList<Question> questions = <Question>[].obs;

  void checkIfQuestionsAnswered() {
    questionsAnswered.value = answers.length == questions.length;
  }

  @override
  void onInit() {
    super.onInit();
    _loadQuestions();
  }

  Future<void> _loadQuestions() async {
    final fetchedQuestions = await _questionController.fetch();
    questions.value = fetchedQuestions;
  }
}

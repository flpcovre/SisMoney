import 'package:get/get.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/question.dart';

class QuestionsPageController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxMap<int, String> answers = <int, String>{}.obs;
  RxBool questionsAnswered = false.obs;

  final QuestionController _questionController = Get.find<QuestionController>();

  @override
  void onInit() {
    super.onInit();
  }
  
  Future<List<Question>> loadQuestions() async {
    final questions = await _questionController.fetch();
    return questions;
  }
}

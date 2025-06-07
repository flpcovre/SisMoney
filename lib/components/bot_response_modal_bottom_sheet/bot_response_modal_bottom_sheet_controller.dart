import 'package:get/get.dart';
import 'package:sismoney/controllers/answer_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/user.dart';

class BotResponseModalBottomSheetController extends GetxController {
  final AnswerController _answerController = Get.find<AnswerController>();
  final QuestionController _questionController = Get.find<QuestionController>();
  final IncomeController _incomeController = Get.find<IncomeController>();

  var isLoading = true.obs;

  void simulateLoading(AssessmentQueryDocumentSnapshot assessment) async {
    isLoading.value = true;

    await makePrompt(assessment);

    isLoading.value = false;
  }

  Future<void> makePrompt(AssessmentQueryDocumentSnapshot assessment) async {
    final answers   = await _answerController.fetch();
    final questions = await _questionController.fetch();
    final incomes   = await _incomeController.fetch(assessment);

    List<Map<String, String>> questionsResults = [];
    List<Map<String, Object>> incomesResults   = [];

    for (var answer in answers) {
      final question = questions.firstWhere(
        (q) => q.id == answer.questionId,
        orElse: () => throw Exception('Question not found for id ${answer.questionId}'),
      );

      final alternative = question.alternatives.firstWhere(
        (alt) => alt['id'] == answer.alternativeId,
        orElse: () => throw Exception('Alternative not found for id ${answer.alternativeId}'),
      );

      questionsResults.add({
        'questionDescription': question.description,
        'selectedAnswer': alternative['text'] ?? alternative['description'] ?? 'Descrição não encontrada',
      });

    }

    for (var income in incomes) {
      incomesResults.add({
        'lançamento': income.cast,
        'dia': income.day,
        'description': income.description,
        'tipo': income.type
      });
    }

    String prompt = "";

    print('Questões respondidas: ${questionsResults.toString()}');
    print('Gastos do Mês: ${incomesResults.toString()}');
  }
}
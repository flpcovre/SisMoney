import 'package:get/get.dart';
import 'package:sismoney/controllers/answer_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/models/question.dart';
import 'package:sismoney/models/user.dart';

class BotResponseModalBottomSheetController extends GetxController {
  final AnswerController _answerController = Get.find<AnswerController>();
  final QuestionController _questionController = Get.find<QuestionController>();
  final IncomeController _incomeController = Get.find<IncomeController>();

  var isLoading = true.obs;

  void simulateLoading(AssessmentQueryDocumentSnapshot assessment) async {
    isLoading.value = true;

    try {
      await _generatePromptData(assessment);
    } catch (e) {
      print('Erro ao gerar dados para o prompt: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _generatePromptData(AssessmentQueryDocumentSnapshot assessment) async {
    final answers = await _answerController.fetch();
    final questions = await _questionController.fetch();
    final incomes = await _incomeController.fetch(assessment);

    final questionResults = _mapAnswersToQuestions(answers, questions);
    final incomeResults = _mapIncomes(incomes);

    _printDebugInfo(questionResults, incomeResults);
  }

  List<Map<String, dynamic>> _mapAnswersToQuestions(List<Answer> answers, List<Question> questions) {
    return answers.map((answer) {
      final question = questions.firstWhere(
        (q) => q.id == answer.questionId
      );

      final alternative = question.alternatives.firstWhere(
        (alt) => alt['id'] == answer.alternativeId
      );

      return {
        'questionDescription': question.description,
        'selectedAnswer': alternative['text'] ?? alternative['description'] ?? 'Descrição não encontrada',
      };
    }).toList();
  }

  List<Map<String, Object>> _mapIncomes(List<Income> incomes) {
    return incomes.map((income) {
      return Map<String, Object>.from(income.toJson());
    }).toList();
  }

  void _printDebugInfo(List<Map<String, dynamic>> questionResults, List<Map<String, Object>> incomeResults) {
    print('Questões respondidas: ${questionResults.toString()}');
    print('Gastos do Mês: ${incomeResults.toString()}');
  }

  /*
  String _buildPrompt(List<Map<String, String>> questions, List<Map<String, Object>> incomes) {
    return '';
  }
  */
}

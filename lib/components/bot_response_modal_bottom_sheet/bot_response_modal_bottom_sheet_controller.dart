import 'dart:convert';

import 'package:get/get.dart';
import 'package:sismoney/controllers/answer_controller.dart';
import 'package:sismoney/controllers/assessment_controller.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/question_controller.dart';
import 'package:sismoney/integrations/openai/completions/create_default_chat_completion.dart';
import 'package:sismoney/models/question.dart';
import 'package:sismoney/models/user.dart';

class BotResponseModalBottomSheetController extends GetxController {
  final CreateDefaultChatCompletion _createDefaultChatCompletion = Get.find<CreateDefaultChatCompletion>();

  final AssessmentController _assessmentController = Get.find<AssessmentController>();
  final AnswerController _answerController = Get.find<AnswerController>();
  final QuestionController _questionController = Get.find<QuestionController>();
  final IncomeController _incomeController = Get.find<IncomeController>();

  var isLoading = true.obs;
  RxString responseText = ''.obs; 

  void loadBotResponse(AssessmentQueryDocumentSnapshot assessment) async {
    isLoading.value = true;

    try {
      final prompt = await _generatePromptData(assessment);
      final response = await _createDefaultChatCompletion.execute(
        instructions: _buildInstructions(), 
        message: prompt
      );

      final message = jsonDecode(response.body)['choices'][0]['message']['content'];
      responseText.value = message;
      
      await _assessmentController.defineBotResponse(assessment, responseText.value);
    } catch (e) {
      print('Erro: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<String> _generatePromptData(AssessmentQueryDocumentSnapshot assessment) async {
    final answers = await _answerController.fetch();
    final questions = await _questionController.fetch();
    final incomes = await _incomeController.fetch(assessment);

    final questionResults = _mapAnswersToQuestions(answers, questions);
    final incomeResults = _mapIncomes(incomes);

    return _buildPrompt(questionResults, incomeResults, assessment);
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

  String _buildPrompt(
    List<Map<String, dynamic>> questions,
    List<Map<String, Object>> incomes,
    AssessmentQueryDocumentSnapshot assessment
  ) {
    return '''
      A seguir estão as informações do perfil de um usuário e os dados financeiros do mês atual. Com base nisso, faça uma análise personalizada sobre como foi o mês financeiro do usuário. Destaque comportamentos positivos, aponte pontos de atenção ou preocupações, ofereça sugestões práticas e dê dicas que ajudem o usuário a melhorar seu controle financeiro no próximo mês. Mantenha um tom acolhedor e motivador.

      Perfil do Usuário:
      ${_formatQuestions(questions)}

      Resumo do Mês (${assessment.data.month}/${assessment.data.year}):
      Valor de Abertura: R\$ ${assessment.data.startBalance}
      Valor de Fechamento: R\$ ${assessment.data.endBalance}

      Lançamentos do mês:
      ${_formatIncomes(incomes)}
    ''';
  }

  String _formatQuestions(List<Map<String, dynamic>> questions) {
    return questions.map((q) => "- ${q['questionDescription']}: ${q['selectedAnswer']}").join('\n');
  }

  String _formatIncomes(List<Map<String, Object>> incomes) {
    return incomes.map((i) => "- ${i['description']} (${i['type']}): R\$ ${i['cast']}").join('\n');
  }

  String _buildInstructions() {
    return 'Você é um assistente financeiro inteligente integrado a um aplicativo de finanças pessoais. Seu papel é analisar o comportamento financeiro mensal de um usuário com base nos dados fornecidos, como entradas e saídas de dinheiro, e nas informações do perfil pessoal dele (como objetivos, estilo de vida, preocupações financeiras, etc.). Ao final de cada mês, sua função é gerar uma análise personalizada, clara e empática, destacando pontos positivos, alertas sobre gastos excessivos, oportunidades de melhoria e dicas práticas para o próximo mês, sempre considerando o perfil individual do usuário.';
  }

  Future<AssessmentQueryDocumentSnapshot?> fetchAssessment(int month, int year) async {
    return await _assessmentController.fetchByMonthYear(month, year);
  }
}

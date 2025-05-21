import 'package:get/get.dart';
import 'package:sismoney/models/alternative.dart';
import 'package:sismoney/models/question.dart';

class QuestionsPageController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxMap<int, String> answers = <int, String>{}.obs;
  RxBool questionsAnswered = false.obs;

  final List<Question> questions = [
    Question(
      id: 1, 
      description: 'Qual o seu principal objetivo financeiro no momento?', 
      alternatives: [
        Alternative(id: 1, description: 'Quitar dívidas'),
        Alternative(id: 2, description: 'Poupar dinheiro'),
        Alternative(id: 3, description: 'Investir para o futuro'),
        Alternative(id: 4, description: 'Controlar melhor os gastos'),
        Alternative(id: 5, description: 'Fazer uma grande compra'),
      ]
    ),
    Question(
      id: 1, 
      description: 'Qual a sua principal fonte de renda?', 
      alternatives: [
        Alternative(id: 1, description: 'Salário fixo'),
        Alternative(id: 2, description: 'Renda variável'),
        Alternative(id: 3, description: 'Empreendimento próprio'),
        Alternative(id: 4, description: 'Aposentadoria/pensão'),
        Alternative(id: 5, description: 'Nenhuma no momento'),
      ]
    ),
  ];

  void checkIfQuestionsAnswered() {
    questionsAnswered.value = answers.length == questions.length;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

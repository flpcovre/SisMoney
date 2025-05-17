import 'package:get/get.dart';

class QuestionsPageController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxMap<int, String> answers = <int, String>{}.obs;
  RxBool questionsAnswered = false.obs;

  final List<Map<String, Object>> questions = [
    {
      'id': 1,
      'description': 'Qual o seu principal objetivo financeiro no momento?',
      'alternatives': [
        {'id': 1, 'description': 'Quitar dívidas'},
        {'id': 2, 'description': 'Poupar dinheiro'},
        {'id': 3, 'description': 'Investir para o futuro'},
        {'id': 4, 'description': 'Controlar melhor os gastos'},
        {'id': 5, 'description': 'Fazer uma grande compra'},
      ],
    },
    {
      'id': 2,
      'description': 'Qual a sua principal fonte de renda?',
      'alternatives': [
        {'id': 1, 'description': 'Salário fixo'},
        {'id': 2, 'description': 'Renda variável'},
        {'id': 3, 'description': 'Empreendimento próprio'},
        {'id': 4, 'description': 'Aposentadoria/pensão'},
        {'id': 5, 'description': 'Nenhuma no momento'},
      ],
    },
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

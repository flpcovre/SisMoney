import 'package:get/get.dart';

class QuestionsPageController extends GetxController {
  var pageIndex = 0.obs;

  var answers = <int, String>{}.obs;

  final questions = [
    {
      'pergunta': 'Qual o seu principal objetivo financeiro no momento?',
      'alternativas': [
        'Quitar dívidas',
        'Poupar dinheiro',
        'Investir para o futuro',
        'Controlar melhor os gastos',
        'Fazer uma grande compra',
      ],
    },
    {
      'pergunta': 'Qual a sua principal fonte de renda?',
      'alternativas': [
        'Salário fixo',
        'Renda variável',
        'Empreendimento próprio',
        'Aposentadoria/pensão',
        'Nenhuma no momento',
      ],
    },
  ];

  @override
  void onInit() {
    super.onInit();
  
    
  }

  @override
  void onClose() {
    super.onClose();
  }
}
import 'package:sismoney/models/alternative.dart';
import 'package:sismoney/models/question.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  @override
  Future<List<Question>> getAllQuestions() async {
    await Future.delayed(Duration(seconds: 3));
    return [
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
  }
  
}
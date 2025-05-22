import 'package:sismoney/models/question.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';
import 'package:sismoney/services/contracts/question_service.dart';

class QuestionServiceImpl implements QuestionService {
  final QuestionRepository _questionRepository;

  QuestionServiceImpl(this._questionRepository);

  @override
  Future<List<Question>> getQuestions() async {
    final List<Question> questions =  await _questionRepository.getAllQuestions();
    return questions;
  }

}
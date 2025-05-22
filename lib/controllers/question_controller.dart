import 'package:sismoney/models/question.dart';
import 'package:sismoney/services/contracts/question_service.dart';

class QuestionController {
  final QuestionService _questionService;

  QuestionController(this._questionService);

  Future<List<Question>> fetch() async {
    try {
      final List<Question> questions = await _questionService.getQuestions();
      return questions;
    } catch (e) {
      rethrow;
    }
  }
}
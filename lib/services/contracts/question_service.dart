import 'package:sismoney/models/question.dart';

abstract class QuestionService {
  Future<List<Question>> getQuestions();
}
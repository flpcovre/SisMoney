import 'package:sismoney/models/question.dart';

abstract class QuestionRepository {
  Future<List<Question>> getAllQuestions();
}
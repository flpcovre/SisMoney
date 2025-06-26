import 'package:sismoney/models/question.dart';
import 'package:sismoney/models/user.dart';

abstract class QuestionRepository {
  Future<List<Question>> getAllQuestions();
  Future<Question?>findByAnswer(Answer answer);
}
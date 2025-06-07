import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AnswerService {
  Future<void> createAnswer(Authenticatable user, List<Answer> answers);
  Future<List<Answer>> getAnswers(Authenticatable user);
}
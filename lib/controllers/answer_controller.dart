import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/answer_service.dart';

class AnswerController {
  final Authenticatable _user;
  final AnswerService _answerService;

  AnswerController(this._user, this._answerService);

  Future<void> store(List<Answer> answers) async {
    try {
      await _answerService.createAnswer(_user, answers);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Answer>> fetch() async {
    try {
      final answers = await _answerService.getAnswers(_user);
      return answers;
    } catch (e) {
      rethrow;
    }
  }
}
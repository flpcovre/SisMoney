import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/answer_repository.dart';
import 'package:sismoney/services/contracts/answer_service.dart';

class AnswerServiceImpl implements AnswerService {
  final AnswerRepository _answerRepository;

  AnswerServiceImpl(this._answerRepository);

  @override
  Future<void> createAnswer(Authenticatable user, List<Answer> answers) async {
    answers.forEach((answer) async {
      await _answerRepository.create(user, answer);
    });
  }
  
  @override
  Future<List<Answer>> getAnswers(Authenticatable user) async {
    final answers = await _answerRepository.getAllByUser(user);
    return answers;
  }
}
import 'package:sismoney/models/question.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  @override
  Future<List<Question>> getAllQuestions() async {
    final querySnapshot = await questionsRef.get();
    return querySnapshot.docs.map((doc) => doc.data).toList();
    }

  @override
  Future<Question?> findByAnswer(Answer answer) async {
    final snapshot = await questionsRef
        .whereId(isEqualTo: answer.questionId)
        .get();

    final question = snapshot.docs.map((e) => e.data).firstOrNull;

    return question;
  }
}
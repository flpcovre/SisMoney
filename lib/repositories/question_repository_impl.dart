import 'package:sismoney/models/question.dart';
import 'package:sismoney/repositories/contracts/question_repository.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  @override
  Future<List<Question>> getAllQuestions() async {
    final querySnapshot = await questionsRef.get();
    return querySnapshot.docs.map((doc) => doc.data).toList();
  }
}

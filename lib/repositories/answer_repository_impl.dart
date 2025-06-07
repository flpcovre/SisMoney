import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/answer_repository.dart';

class AnswerRepositoryImpl implements AnswerRepository {
  @override
  Future<Answer> create(Authenticatable user, Answer answer) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final collection = usersRef.doc(userId).answers;
    await collection.add(answer);

    return answer;
  }
  
  @override
  Future<List<Answer>> getAllByUser(Authenticatable user) async {
    final result = await usersRef.whereEmail(isEqualTo: user.email).get();
    final userId = result.docs.first.id;

    final snapshot = await usersRef
      .doc(userId)
      .answers
      .get();

    return snapshot.docs.map((doc) => doc.data).toList();
  }
}
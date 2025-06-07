import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class AnswerRepository {
  Future<Answer> create(Authenticatable user, Answer answer);
  Future<List<Answer>> getAllByUser(Authenticatable user);
}
import 'package:sismoney/models/user.dart';

abstract class UserRepository {
  Future<User> getUserByEmail(User user);
  Future<User> createUser(User user);
}
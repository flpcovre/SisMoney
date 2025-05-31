import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class UserRepository {
  Future<User> createUser(User user);
  Future<User> getUserByEmail(Authenticatable user);
}
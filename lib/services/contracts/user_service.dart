import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

abstract class UserService {
  Future<User> getProfile(Authenticatable user);
}
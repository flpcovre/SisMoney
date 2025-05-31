import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> createUser(User user) async {
    await usersRef.add(user);
    return user;
  }

  @override
  Future<User> getUserByEmail(Authenticatable user) async {
    UserQuerySnapshot result = await usersRef.whereEmail(isEqualTo: user.email).get();
    return User(
      name: result.docs[0].data.name,
      email: result.docs[0].data.email
    );
  }
}
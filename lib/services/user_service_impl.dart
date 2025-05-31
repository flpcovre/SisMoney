import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/repositories/contracts/user_repository.dart';
import 'package:sismoney/services/contracts/user_service.dart';

class UserServiceImpl implements UserService{
  final UserRepository _userRepository;

  UserServiceImpl(this._userRepository);

  @override
  Future<User> getProfile(Authenticatable user) async {
    final profile = await _userRepository.getUserByEmail(user);
    return profile;
  }
}
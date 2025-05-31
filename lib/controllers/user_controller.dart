import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/services/contracts/user_service.dart';

class UserController {
  final Authenticatable _user;
  final UserService _userService;

  UserController(this._user, this._userService);

  Future<User> profile() async {
    final user = await _userService.getProfile(_user);
    return user;
  }

  Authenticatable getUser() {
    return _user;
  }
}
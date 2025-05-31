import 'package:sismoney/integrations/google/auth/auth_result.dart';
import 'package:sismoney/models/user.dart';

abstract class Authentication {
  Future<AuthResult> signIn(String email, String password); 
  Future<AuthResult> signUp(String name, String email, String password);
  void signOut();
  User? getUser();
}

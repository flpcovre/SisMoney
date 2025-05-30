import 'package:sismoney/integrations/google/auth/auth_result.dart';
import 'package:sismoney/models/user.dart';

abstract class ExternalProviderAuthentication {
  Future<AuthResult> authenticate(); 
  void signOut();
  User? getUser();
}

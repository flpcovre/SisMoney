import 'package:sismoney/integrations/google/auth/auth_result.dart';

abstract class ExternalProviderAuthentication {
  Future<AuthResult> authenticate(); 
}

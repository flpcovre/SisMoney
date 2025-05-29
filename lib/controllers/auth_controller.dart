import 'package:get/get.dart';
import 'package:sismoney/integrations/google/auth/auth_result.dart';
import 'package:sismoney/integrations/google/auth/contracts/authentication.dart';
import 'package:sismoney/integrations/google/auth/contracts/external_provider_authentication.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';
import 'package:sismoney/models/user.dart';

class AuthController {
  final Authentication _authServiceFirebase;
  final ExternalProviderAuthentication _authServiceGoogle;

  AuthController(this._authServiceFirebase, this._authServiceGoogle);

  Future<String?> signUpWithEmailAndPassword(String name, String email, String password) async {
    final result = await _authServiceFirebase.signUp(name, email, password);

    if (result is AuthSuccess) {
      final user = result.data;
      Get.put<Authenticatable>(user);
      return null;
    }
    else if (result is AuthFailure) {
      return result.message;
    }
    return 'An unexpected error ocurred';
  }
  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    final result = await _authServiceFirebase.signIn(email, password);

    if (result is AuthSuccess) {
      final user = result.data;
      Get.put<Authenticatable>(user);
      return null;
    }
    else if (result is AuthFailure) {
      return result.message;
    }
    return 'An unexpected error ocurred';
  }

  Future<String?> autheticateWithGoogle() async {
    final result = await _authServiceGoogle.authenticate();
    if (result is AuthSuccess) {
      final user = result.data;
      Get.put<Authenticatable>(user);
      return null;
    }
    else if (result is AuthFailure) {
      return result.message;
    } 
    return 'An unexpected error ocurred';
  }
}
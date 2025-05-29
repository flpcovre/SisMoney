import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sismoney/integrations/google/auth/auth_result.dart';
import 'package:sismoney/integrations/google/auth/contracts/external_provider_authentication.dart';
import 'package:sismoney/models/user.dart' as user;
import 'package:sismoney/repositories/contracts/user_repository.dart';
import 'package:sismoney/repositories/user_repository_impl.dart';

class GoogleAuth implements ExternalProviderAuthentication{
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final UserRepository _userRepository;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  GoogleAuth(this._userRepository);

  @override
  Future<AuthResult> authenticate() async {
    try {
      await _googleSignIn.signOut();
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential googleCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        UserCredential userCredential = await _firebaseAuth.signInWithCredential(googleCredential);

        user.User userGoogle = user.User(
            name: userCredential.user!.displayName ?? '',
            email: userCredential.user!.email ?? '',
          );

        if (userCredential.additionalUserInfo?.isNewUser == true) {
          _userRepository.createUser(userGoogle);
        }

        return AuthSuccess(userGoogle);
      }
      return AuthFailure('Error trying to Log in with Google. Try Again');
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'account-exists-with-different-credential':
          return AuthFailure('An account already exists with this email. Sign in using one of the associated providers and link credentials.');
        case 'invalid-credential':
          return AuthFailure('The provided credential is invalid or has expired.');
        case 'operation-not-allowed':
          return AuthFailure('This type of account is not enabled. Please contact support.');
        case 'user-disabled':
          return AuthFailure('This user account has been disabled.');
        case 'user-not-found':
          return AuthFailure('No user found with this email.');
        case 'wrong-password':
          return AuthFailure('Password incorrect.');
        case 'invalid-verification-code':
          return AuthFailure('The verification code is invalid.');
        case 'invalid-verification-id':
          return AuthFailure('The verification ID is invalid.');
        default:
          return AuthFailure('An unexpected error occurred.');
      }
    }
  }
}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sismoney/integrations/google/auth/auth_result.dart';
import 'package:sismoney/integrations/google/auth/contracts/authentication.dart';
import 'package:sismoney/repositories/contracts/user_repository.dart';
import 'package:sismoney/models/user.dart' as user;

class AppFirebaseAuth implements Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserRepository _repository;

  AppFirebaseAuth(this._repository);

  @override
  Future<AuthResult> signIn(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, 
          password: password
      );
      
      return AuthSuccess (user.User(
        name: credential.user!.displayName ?? '',
        email: email
      ));
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return AuthFailure('Email not found.');
        case 'invalid-email':
          return AuthFailure('Email is not valid.');
        case 'user-disabled':
          return AuthFailure('User banned.');
        case 'wrong-password':
          return AuthFailure('Password wrong.');
        case 'too-many-requests':
          return AuthFailure('Too many requests. Try again later.');
        case 'invalid-credential':
          return AuthFailure('Email or password incorrects.');
        case 'network-request-failed':
          return AuthFailure('Internet connection error. Check your internet connection.');
        default:
          return AuthFailure('An unexpected error occured.');
      }
    }
  }

  @override
  Future<AuthResult> signUp(String name, String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await credential.user!.updateDisplayName(name);

      user.User newUser = user.User(
        name: name,
        email: email,
      );
      _repository.createUser(newUser);
      
      return AuthSuccess(newUser);

    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return AuthFailure('The email is already in use.');
        case 'invalid-email':
          return AuthFailure('The email is not valid.');
        case 'weak-password':
          return AuthFailure('The password is too weak.');
        case 'operation-not-allowed':
          return AuthFailure('Sign up is disable.');
        case 'too-many-requests':
          return AuthFailure('Too many requests. Try again later.');
        case 'network-request-failed':
          return AuthFailure('Internet connection error. Check your internet connection.');
        default:
          return AuthFailure('An unexpected error occurred.');
      }
    }
  }

  @override
  void signOut() {
    _auth.signOut();
  }

  @override
  user.User? getUser() {
    final firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      return user.User(
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email ?? '',
      );
    }
    return null;
  }
}
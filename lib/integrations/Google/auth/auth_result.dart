abstract class AuthResult<T> {}

class AuthSuccess<T> extends AuthResult<T> {
  final T data;
  AuthSuccess(this.data);
}

class AuthFailure<T> extends AuthResult<T> {
  final String message;
  AuthFailure(this.message);
}
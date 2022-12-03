enum AuthErrorCode {
  notAuth,
}

class AuthException implements Exception {
  AuthException(this.error);

  final AuthErrorCode error;
}

class ApiEndPoints {
  // ignore: prefer_const_declarations
  static final String baseUrl = 'http://143.198.92.250:8080';
  static AuthEndPoints authEndpoints = AuthEndPoints();
}

class AuthEndPoints {
  final String registerEmail = '/register';
  final String loginEmail = '/login';
}

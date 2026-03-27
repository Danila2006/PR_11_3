class AuthRepository {
  Future<String> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    if (username == 'test' && password == '1234') {
      return 'fake_token_123';
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../../data/repositories/auth_repository.dart';

class AuthState {
  final bool isAuthenticated;
  final String? error;

  AuthState({required this.isAuthenticated, this.error});

  AuthState copyWith({bool? isAuthenticated, String? error}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState(isAuthenticated: false)) {
    autoLogin();
  }

  final repo = AuthRepository();

  Future<void> autoLogin() async {
    final token = await SecureStorageService.getToken();
    state = state.copyWith(isAuthenticated: token != null);
  }

  Future<void> login(String username, String password) async {
    try {
      final token = await repo.login(username, password);
      await SecureStorageService.saveToken(token);
      state = state.copyWith(isAuthenticated: true, error: null);
    } catch (_) {
      state = state.copyWith(error: 'Login failed');
    }
  }

  Future<void> logout() async {
    await SecureStorageService.clear();
    state = state.copyWith(isAuthenticated: false);
  }
}

final authProvider =
StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
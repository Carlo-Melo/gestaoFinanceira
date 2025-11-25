import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _user;
  bool _isLoading = false;
  String? _errorMessage;

  String? get user => _user;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // LOGIN
  Future<bool> login(String usuario, String senha) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1)); // simula API

    if (usuario == "carlos" && senha == "123") {
      _user = usuario;
      _isLoading = false;
      notifyListeners();
      return true;
    } else {
      _isLoading = false;
      _errorMessage = "Usuário ou senha incorretos";
      notifyListeners();
      return false;
    }
  }

  // CADASTRO (FAKE)
  Future<bool> register(String usuario, String email, String senha) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1)); // simula API

    // Aqui normalmente chamaria um backend
    _isLoading = false;
    return true;
  }

  // 🚀 LOGOUT DEFINITIVO
  void logout() {
    _user = null;
    notifyListeners();
  }
}

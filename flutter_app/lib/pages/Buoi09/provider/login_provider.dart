import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final name = 'admin';
  final passAdmin = '123';

  bool isUser = false;
  bool isLoading = false;

  Future<void> login(String mail, String pass) async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));

    if (mail == name && pass == passAdmin) {
      isUser = true;
    } else {
      isUser = false;
    }

    isLoading = false;
    notifyListeners();
  }
}

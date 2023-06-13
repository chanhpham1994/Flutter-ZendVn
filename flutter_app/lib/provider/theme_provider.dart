import 'package:flutter/material.dart';
import 'dart:convert';

class ThemeProvider extends ChangeNotifier {
  bool checkValue = true;

  void switchButton(checkValue) {
    checkValue = false;
    notifyListeners();
  }
}

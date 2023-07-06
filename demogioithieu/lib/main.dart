import 'package:demogioithieu/home_page.dart';
import 'package:demogioithieu/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showLoginPage = prefs.getBool('loginpage') ?? false;

  runApp(MyApp(showLoginPage: showLoginPage));
}

class MyApp extends StatelessWidget {
  bool showLoginPage;

  MyApp({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      home: showLoginPage ? const LoginPage() : const HomePage(),
    );
  }
}

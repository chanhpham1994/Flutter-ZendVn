import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Buoi09/provider/login_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/my_app.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => LoginProvider(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.blue, fontSize: 35),
      //   ),
      //   /* light theme settings */
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.red, fontSize: 35),
      //   ),
      //   /* dark theme settings */
      // ),
      // themeMode: ThemeProvider.checkValue ? ThemeMode.light : ThemeMode.dark,
      // themeMode: ThemeMode.light,
      home: MyApp(),
    ),
  ));
}

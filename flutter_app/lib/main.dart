import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/my_app.dart';
import 'package:flutter_app/provider/item_provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => ItemProvider(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

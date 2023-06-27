import 'package:flutter/material.dart';
import 'package:news_app/app/router/routes.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/provider/categoryProvider.dart';
import 'package:news_app/provider/productProvider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        onGenerateRoute: RouteCustom.onGenerateRoute,
      ),
    );
  }
}

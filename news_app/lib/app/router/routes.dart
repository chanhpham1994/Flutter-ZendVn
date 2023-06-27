import 'package:flutter/material.dart';
import 'package:news_app/app/router/router_name.dart';
import 'package:news_app/pages/category_page.dart';
import 'package:news_app/pages/detail_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/search_page.dart';
import 'package:news_app/pages/view_all_page.dart';

class RouteCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments as Map;

    switch (settings.name) {
      case RouterName.homePage:
        return MaterialPageRoute(builder: (context) {
          return const HomePage();
        });
      case RouterName.viewAllPage:
        return MaterialPageRoute(builder: (context) {
          return const ViewAllPage();
        });
      case RouterName.viewAllPage:
        return MaterialPageRoute(builder: (context) {
          return const DetailPage();
        });
      case RouterName.categoryPage:
        return MaterialPageRoute(builder: (context) {
          return const CategoryPage();
        });
      case RouterName.searchPage:
        return MaterialPageRoute(builder: (context) {
          return const SearchPage();
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return Container(
            child: const Text('Error Router'),
          );
        });
    }
  }
}

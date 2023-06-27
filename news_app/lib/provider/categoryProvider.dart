import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';

import 'package:news_app/model/category.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  final List<int> selectedId = [];
  final List articles = [];

  Future<List<CategoryItem>> getCategory() async {
    const url =
        'https://apiforlearning.zendvn.com/api/categories_news?offset=0&limit=10&sort_by=id&sort_dir=asc';

    final response = await http.get(Uri.parse(url));

    final jsonData = jsonDecode(response.body);

    List<CategoryItem> data = List<CategoryItem>.from(
            jsonData.map((item) => CategoryItem.fromJson(jsonEncode((item)))))
        .toList();

    // print(data);
    return data;
  }

  Future<List<ArticleItem>> getArtByCate(selectedId) async {
    final url =
        'https://apiforlearning.zendvn.com/api/categories_news/$selectedId/articles?offset=0&limit=10&sort_by=id&sort_dir=desc';

    final response = await http.get(Uri.parse(url));

    final jsonData = jsonDecode(response.body);

    List<ArticleItem> articles = List<ArticleItem>.from(
            jsonData.map((item) => ArticleItem.fromJson(jsonEncode((item)))))
        .toList();

    // print(articles);
    return articles;
  }

  void handleSelect(int id) {
    if (selectedId.contains(id)) {
      selectedId.remove(id);
    } else {
      selectedId.add(id);
    }
    getArtByCate(1);
    // print(selectedId);
    notifyListeners();
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  Future<ArticleItem> getArtDetail(selectedId) async {
    final url = 'https://apiforlearning.zendvn.com/api/articles/$selectedId';

    final response = await http.get(Uri.parse(url));

    final jsonData = jsonDecode(response.body);

    ArticleItem detail = ArticleItem.fromJson(jsonEncode(jsonData));

    // print(detail);
    return detail;
  }
}

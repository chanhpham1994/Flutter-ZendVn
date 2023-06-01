import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';

import 'package:flutter_app/item/item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemProvider extends ChangeNotifier {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  List array = [];
  late Future<int> _counter;
  Future<void> runList() async {
    SharedPreferences prefs = await _prefs;

    await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

    List<String>? array = prefs.getStringList('items');

    // print(array);
  }

  List<Item> _items = [];
  int _countItemFavorite = 0;

  List<Item> get items {
    return [..._items];
  }

  int get countItemFavorite {
    return _countItemFavorite;
  }

  List<Item> showItemFavorite() {
    List<Item> data = _items.where((element) => element.isFavorite).toList();
    return data.isEmpty ? [] : data;
  }

  void handleCountItemFav() {
    _countItemFavorite = _items.where((element) => element.isFavorite).length;
    notifyListeners();
  }

  void readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/category.json');
    final parsedList = await json.decode(response);
    List<Item> listData = List<Item>.from(
        parsedList.map((data) => Item.fromJson(jsonEncode(data))));
    _items = listData;
    notifyListeners();
  }
}

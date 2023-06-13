import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Buoi10/model/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class B10BT01 extends StatefulWidget {
  const B10BT01({super.key});

  @override
  State<B10BT01> createState() => _B10BT01State();
}

class _B10BT01State extends State<B10BT01> {
  final List<CategoryItem> categoryItems = [
    CategoryItem(
        id: '1',
        name: 'Thời sự trong ngay',
        itemColor: '0xffFF8686',
        checked: false),
    CategoryItem(
        id: '2', name: 'Thời sự', itemColor: '0xff6BBDCF', checked: false),
    CategoryItem(
        id: '3', name: 'Thời sự', itemColor: '0xffFFBD4A', checked: false),
    CategoryItem(
        id: '4', name: 'Thời sự', itemColor: '0xff7D59E1', checked: false),
    CategoryItem(
        id: '5', name: 'Thể thao', itemColor: '0xffDB75FF', checked: false),
    CategoryItem(
        id: '6', name: 'Thể thao', itemColor: '0xffFFBB4B', checked: false),
    CategoryItem(
        id: '7', name: 'Thể thao', itemColor: '0xffA5CC51', checked: false),
    CategoryItem(
        id: '8', name: 'Thể thao', itemColor: '0xff8AAFB7', checked: false),
  ];

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<List> checkedList;

  Future<void> checkCategory(id) async {
    // print(id);
    int index = int.parse(id) - 1;

    categoryItems[index].checked = !categoryItems[index].checked;

    final SharedPreferences prefs = await _prefs;

    setState(() {
      checkedList =
          prefs.setStringList('checkedList', <String>[id]).then((bool success) {
        return checkedList;
      });
    });
  }

  // @override
  // void initState() {
  //   super.initState();

  //   Future<void> getCategory() async {
  //     final SharedPreferences prefs = await _prefs;

  //     final List<String> items = prefs.getStringList('checkedList');
  //   }

  //   getCategory();
  //   // print(checkedList);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 90,
            ),
            itemCount: categoryItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  decoration: BoxDecoration(
                      color: Color(
                        int.parse(categoryItems[index].itemColor),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          categoryItems[index].name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          checkCategory(categoryItems[index].id);
                        },
                        child: categoryItems[index].checked
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )
                            : Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                      )
                    ],
                  ));
            }),
      ),
    );
  }
}

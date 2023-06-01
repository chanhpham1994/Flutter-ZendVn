import 'dart:ui';

import 'package:flutter/material.dart';

// import 'dart:convert';

// import 'package:flutter/services.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/pages/Buoi06/BT03_page2.dart';
import 'package:flutter_app/pages/Buoi06/widget/Card.dart';
import 'package:flutter_app/provider/item_provider.dart';
import 'package:provider/provider.dart';

class B6BT03 extends StatefulWidget {
  const B6BT03({Key? key}) : super(key: key);

  @override
  _B6BT03 createState() => _B6BT03();
}

class _B6BT03 extends State<B6BT03> {
  List item = [];

  String backImage =
      'https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg';

  // Fetch content from the json file
  // Future<void> readJson() async {
  //   final String response =
  //       await rootBundle.loadString('assets/json/category.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     items = data;
  //     backImage = items[0]['image'];
  //   });
  // }

  // void callbackFunction(int index, CarouselPageChangedReason changeReason) {
  //   setState(() {
  //     backImage = items[index]['image'];
  //   });
  //   // print(backImage);
  // }

  @override
  void initState() {
    // TODO: implement initState
    // this.readJson();
    super.initState();
    Provider.of<ItemProvider>(context, listen: false).readJson();
    Provider.of<ItemProvider>(context, listen: false).runList();
  }

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<ItemProvider>(context).items;

    // print(items);

    print('build');

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    "${backImage}",
                  ),
                  fit: BoxFit.fill,
                )),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,
                      //??
                      aspectRatio: 2.0,
                      //Phan khung hinh chiem
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.vertical,
                    ),
                    items: items.map((ele) {
                      return ChangeNotifierProvider.value(
                        value: ele,
                        child: Builder(
                          builder: (BuildContext context) {
                            return OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 0, color: Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SecondRoute(item: ele)),
                                );
                              },
                              child: CardBody(item: ele),
                            );
                          },
                        ),
                      );
                    }).toList(),
                  ),
                )),
            Positioned(
              left: 40,
              top: 60,
              child: Consumer<ItemProvider>(
                builder: (context, item, child) {
                  return Badge(
                    label: Text(
                      item.countItemFavorite.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

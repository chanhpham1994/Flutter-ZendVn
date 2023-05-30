import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/pages/Buoi06/BT03_page2.dart';
import 'package:flutter_app/pages/Buoi06/widget/Card.dart';

class B6BT03 extends StatefulWidget {
  const B6BT03({Key? key}) : super(key: key);

  @override
  _B6BT03 createState() => _B6BT03();
}

class _B6BT03 extends State<B6BT03> {
  List items = [];
  String backImage =
      'https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg';

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/category.json');
    final data = await json.decode(response);
    setState(() {
      items = data;
      backImage = items[0]['image'];
    });
  }

  void callbackFunction(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      backImage = items[index]['image'];
    });
    // print(backImage);
  }

  @override
  void initState() {
    // TODO: implement initState
    this.readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: callbackFunction,
                  scrollDirection: Axis.vertical,
                ),
                items: items.map((ele) {
                  return Builder(
                    builder: (BuildContext context) {
                      return OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 0, color: Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRoute(item: ele)),
                          );
                        },
                        child: CardBody(item: ele),
                      );
                    },
                  );
                }).toList(),
              ),
            )),
      ),
    );
  }
}

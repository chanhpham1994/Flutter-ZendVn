import 'dart:ui';

import 'package:flutter/material.dart';

class B6BT02 extends StatelessWidget {
  const B6BT02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/pexels-photo-6985001.jpeg",
          ),
          fit: BoxFit.fill,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey.withOpacity(0.6),
            child: Image.network(
                'https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg'),
          ),
        ),
      ),
    );
  }
}

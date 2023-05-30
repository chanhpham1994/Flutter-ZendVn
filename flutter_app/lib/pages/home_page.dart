import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Bai Tap 1',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Glo',
          ),
        ),
        Text(
          'Bai Tap 2',
          style: TextStyle(fontSize: 30),
        ),
      ]),
    ));
  }
}

import 'package:flutter/material.dart';

class BT01 extends StatelessWidget {
  const BT01({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text('Hello Flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello world Hello world Hello world',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Hello Michan',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}

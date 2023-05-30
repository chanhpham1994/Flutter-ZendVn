import 'package:flutter/material.dart';

class BT11 extends StatelessWidget {
  const BT11({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 70,
          ),
          children: [
            ElevatedButton(
              child: Text('Click me'),
              onPressed: () {
                print('Hello');
              },
            ),
            ElevatedButton(
              child: Text(
                'Click me',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.yellow)),
              onPressed: () {
                print('Hello');
              },
            ),
            ElevatedButton(
              child: Text(
                'Click me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                Colors.red,
              )),
              onPressed: () {
                print('Hello');
              },
            ),
            ElevatedButton(
              child: Text('Click me'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.green)),
              onPressed: () {
                print('Hello');
              },
            ),
            ElevatedButton(
              child: Text(
                'Click me',
                style: TextStyle(color: Colors.blue),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white)),
              onPressed: () {
                print('Hello');
              },
            ),
            InkWell()
          ],
        ),
      ),
    );
  }
}

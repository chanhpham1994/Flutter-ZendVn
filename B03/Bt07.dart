import 'package:flutter/material.dart';

class BT07 extends StatelessWidget {
  const BT07({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Center(
                child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      'Welcome ZenVN',
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25))),
                width: double.infinity,
                height: 300,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Lorem Lorem Lorem Lorem Lorem Lorem Lorem')),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: 150,
              height: 30,
              color: Colors.yellow,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Lorem Lorem Lorem Lorem Lorem Lorem Lorem')),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Lorem Lorem Lorem Lorem Lorem Lorem Lorem')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Aut aul dbit'),
                Text('Aut aul dbit'),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80))),
            )
          ]),
        )
      ]),
    );
  }
}

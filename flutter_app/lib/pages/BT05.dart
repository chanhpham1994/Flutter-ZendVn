import 'package:flutter/material.dart';

class BT05 extends StatelessWidget {
  const BT05({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade100,
                    offset: Offset(3, 3),
                    blurRadius: 3,
                  )
                ]),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Text('Name'),
                      Text(
                          'Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem')
                    ],
                  ))
            ]),
          ),
        ));
  }
}

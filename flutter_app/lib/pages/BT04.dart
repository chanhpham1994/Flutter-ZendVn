import 'package:flutter/material.dart';

class BT04 extends StatelessWidget {
  const BT04({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            width: 300,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Languages',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Text('Python'),
                  SizedBox(width: 50),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  Text('JavaSript'),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BT03 extends StatelessWidget {
  const BT03({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        width: double.infinity,
        color: Colors.orange,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'lorem lorem lorem lorem lorem',
                    style: TextStyle(color: Colors.white),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

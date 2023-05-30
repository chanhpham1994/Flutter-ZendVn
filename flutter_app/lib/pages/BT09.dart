import 'dart:ui';

import 'package:flutter/material.dart';

class BT09 extends StatelessWidget {
  const BT09({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pexels-photo-6985001.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 15,
            sigmaY: 15,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Officia eos cor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Unde ut aut ut enim illo ullam. Reprehenderit qui cumque dolore vel qui rerum dolorem laborum temporibus. Omnis quia quaerat quam quas ad voluptates est. Explicabo quibusdam quisquam iure amet quos ea.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.pink.shade200,
                                Colors.pink.shade300,
                              ])),
                      child: Center(
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Unde ut aut ut enim illo ullam. Reprehenderit qui cumque dolore vel qui rerum dolorem laborum temporibus. Omnis quia quaerat quam quas ad voluptates est. Explicabo quibusdam quisquam iure amet quos ea.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

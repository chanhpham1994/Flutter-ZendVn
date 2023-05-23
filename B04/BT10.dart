import 'package:flutter/material.dart';

class BT10 extends StatelessWidget {
  const BT10({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'TODOLIST-APP',
          style: TextStyle(
            fontFamily: 'Glo',
            fontSize: 27,
            color: Colors.grey,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 120,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.orange.shade300,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
                child: Text(
              'Add Task',
              style: TextStyle(
                fontFamily: 'Glo',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ],
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            'Daily task',
            style: TextStyle(
              fontFamily: 'Glo',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 35.0,
            // horizontal: 25.0,
          ),
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 200,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange),
                          child: Center(
                              child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'Study',
                              style: TextStyle(
                                fontFamily: 'Glo',
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          )),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 15,
                              right: 20,
                              left: 40,
                            ),
                            margin: EdgeInsets.only(left: 25),
                            decoration: new BoxDecoration(
                                gradient: new LinearGradient(stops: [
                                  0.10,
                                  0.02
                                ], colors: [
                                  Colors.orange,
                                  Colors.orange.shade200
                                ]),
                                borderRadius: new BorderRadius.all(
                                    const Radius.circular(20.0))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hoc tap va lam viec',
                                    style: TextStyle(
                                      fontFamily: 'Glo',
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '8 AM - 1 PM',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    maxLines: 3,
                                    'Non iste pariatur voluptatem aut voluptates molestias et. Eum a sit et. Ut tempora iusto autem totam ab. Voluptates reprehenderit et saepe et ducimus qui',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                        right: -5,
                        bottom: -5,
                        // width: 150,
                        // height: 70,
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              color: Colors.black,
                              child: Icon(Icons.edit),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ])),
    );
  }
}

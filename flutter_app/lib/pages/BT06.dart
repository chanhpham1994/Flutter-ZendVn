import 'package:flutter/material.dart';

class BT06 extends StatelessWidget {
  const BT06({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: []),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ZendVN',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[400],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 70,
            child: Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: (List.generate(
                  10,
                  (index) => Container(
                        width: 70,
                        // height: 100,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.lightBlue, Colors.white],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ))),
            )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'List Of Article',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: (List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                '08:AM 08:AM 08:AM 08:AM 08:AM',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 20),
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [Colors.lightBlue, Colors.grey],
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))),
            )),
          )
        ]),
      ),
    );
  }
}

// Flexible khac Expanded

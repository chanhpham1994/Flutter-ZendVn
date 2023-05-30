import 'package:flutter/material.dart';

class BT08 extends StatelessWidget {
  const BT08({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Traning",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'aut qui commodi',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Detail',
                      style: TextStyle(
                          color: Colors.orange.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.arrow_forward)
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'perferendis omnis adipisci',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Rerum dolorum dolor porro. In distinctio ea accusantium doloremque.',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(
                                Icons.login,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'ZendVn',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                          width: 60,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Icon(
                            Icons.settings,
                            color: Colors.orange,
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.orange,
                    Colors.orange.shade100,
                    Colors.orange
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('ducimus voluptas quibusdam'),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
              ),
              children: (List.generate(
                  6,
                  (index) => Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 15, bottom: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(3, 3),
                                  blurRadius: 5)
                            ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                              Text(
                                'nesciunt qui quam nesciunt qui quam quam qui',
                                textAlign: TextAlign.center,
                              )
                            ]),
                      ))),
            ),
          ]),
        ),
      ),
    );
  }
}

//GRID VIEW???

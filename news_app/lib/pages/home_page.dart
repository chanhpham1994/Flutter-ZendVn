import 'package:flutter/material.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/pages/components/drawer.dart';
import 'package:news_app/pages/search_page.dart';
import 'package:news_app/pages/view_all_page.dart';
import 'package:news_app/provider/categoryProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 80,
        leading: InkWell(
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Config.orangeColor,
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              alignment: Alignment.center,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Config.orangeColor,
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      //Side Bar
      drawer: const DrawerComponent(),
      //Body
      body: FutureBuilder(
          future: CategoryProvider().getCategory(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'The thao',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                InkWell(
                                  child: const Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Config.orangeColor,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ViewAllPage(
                                                categoryName: 'The Thao',
                                                id: 1,
                                              )),
                                    );
                                  },
                                )
                              ],
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    height: 110,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Image.network(
                                                'https://placeimg.com/640/480/any')),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'nostrum',
                                                style: Config.orangeTitle,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  'Modi amet quos rerum natus unde. Sed sit est. Aut ut quaerat. Libero vitae id doloremque ipsum non rerum.',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                  softWrap: true,
                                                  overflow:
                                                      TextOverflow.visible,
                                                ),
                                              ),
                                              Text(
                                                'quis',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Config.blueColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ));
                              },
                            ),
                          ],
                        );
                      })
                ],
              ),
            );
          }),
    );
  }
}

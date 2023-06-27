import 'package:flutter/material.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/pages/detail_page.dart';
import 'package:news_app/provider/categoryProvider.dart';

class ViewAllPage extends StatelessWidget {
  final id;
  final categoryName;

  const ViewAllPage({super.key, this.id, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Config.orangeColor,
        title: Text(
          categoryName.toString(),
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: FutureBuilder(
        //Run function getCategory() from CategoryProvider
        future: CategoryProvider().getArtByCate(id),
        builder: (BuildContext ontext, AsyncSnapshot snapshot) {
          // print(snapshot);

          // Hiển thị loadding circle trong lúc chờ dữ liệu
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          //Kiễm tra có data hay không
          var articles = snapshot.hasData ? snapshot.data : [];
          // print(articles);
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // print('detail');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      idArticle: articles[index].id,
                                    )),
                          );
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 110,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          articles[index].thumb.toString(),
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        articles[index].title.toString(),
                                        style: Config.orangeTitle,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Flexible(
                                        child: Text(
                                          articles[index]
                                              .description
                                              .toString(),
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        articles[index].publish_date.toString(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Config.blueColor,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

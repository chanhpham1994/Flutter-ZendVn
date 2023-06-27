import 'package:flutter/material.dart';
import 'package:news_app/provider/categoryProvider.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List colors = [
    const Color(0xffFF8686),
    const Color(0xff6BBDCF),
    const Color(0xffFFBD4A),
    const Color(0xff7D59E1),
    const Color(0xffDB75FF),
    const Color(0xffFFBB4B),
    const Color(0xffFF8686),
    const Color(0xff6BBDCF),
    const Color(0xffFFBD4A),
    const Color(0xffDB75FF),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: FutureBuilder(
          //Run function getCategory() from CategoryProvider
          future: CategoryProvider().getCategory(),
          builder: (BuildContext ontext, AsyncSnapshot snapshot) {
            // print(snapshot);

            // Hiển thị loadding circle trong lúc chờ dữ liệu
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            //Kiễm tra có data hay không
            var categoryItem = snapshot.hasData ? snapshot.data : [];

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: snapshot.hasData
                  ? GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 90,
                      ),
                      itemCount: categoryItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 15, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  categoryItem[index].name.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Provider.of<CategoryProvider>(context,
                                          listen: false)
                                      .handleSelect(index);
                                },
                                child: Provider.of<CategoryProvider>(context,
                                                listen: true)
                                            .selectedId
                                            .contains(index) ==
                                        false
                                    ? Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )
                                    : Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 3),
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                              )
                            ],
                          ),
                        );
                      })
                  : const Center(child: Text('No Data')),
            );
          }),
    );
  }
}

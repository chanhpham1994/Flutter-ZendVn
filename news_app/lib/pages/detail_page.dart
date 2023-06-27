import 'package:flutter/material.dart';
import 'package:news_app/provider/productProvider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailPage extends StatefulWidget {
  final idArticle;

  const DetailPage({super.key, this.idArticle});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final WebViewController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = WebViewController();
  //   _controller.loadFlutterAsset('assets/help.html');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Page'),
        ),
        body: FutureBuilder(
          future: ProductProvider().getArtDetail(widget.idArticle),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // Hiển thị loadding circle trong lúc chờ dữ liệu
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            //Kiễm tra có data hay không
            var detail = snapshot.hasData ? snapshot.data : [];

            return SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        detail.thumb.toString(),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        detail.title,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        detail.content,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            );
          },
        ));
  }
}

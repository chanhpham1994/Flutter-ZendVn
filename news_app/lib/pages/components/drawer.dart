import 'package:flutter/material.dart';
import 'package:news_app/pages/category_page.dart';

class DrawerComponent extends StatelessWidget {
  // Ellipse2.png
  final _assetPath = 'assets/img/Ellipse2.png';

  const DrawerComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xff005BEA),
              Color(0xff3DA2F2),
              Color(0xff22CFFE),
            ],
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    _assetPath,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 100),
              child: const Text(
                'App Tin Tuc',
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Trang Chu',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Danh Muc',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryPage()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Yeu Thich',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Da Xem',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

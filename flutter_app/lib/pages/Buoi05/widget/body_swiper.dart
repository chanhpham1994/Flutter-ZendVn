import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';

class SwipeBody extends StatelessWidget {
  const SwipeBody({Key? key, required this.items}) : super(key: key);

  final items;

  @override
  Widget build(BuildContext context) {
    return Swiper(
      layout: SwiperLayout.STACK,
      itemWidth: 350.0,
      itemHeight: 650.0,
      itemCount: items.length,
      itemBuilder: (BuildContext context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.white12,
              title: const Icon(
                Icons.favorite,
                size: 30,
              ),
              subtitle: const Text('Like Image'),
              trailing: Text(
                items[index].name,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            child: Image.asset(
              items[index].image,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

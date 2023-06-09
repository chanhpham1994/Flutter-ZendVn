import 'package:flutter/material.dart';
import 'package:flutter_app/item/item_model.dart';
import 'package:flutter_app/provider/item_provider.dart';
import 'package:provider/provider.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key, required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    print('123');
    return Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 600,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade700,
              blurRadius: 10,
            )
          ],
          image: DecorationImage(
              image: NetworkImage("${item.image}"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${item.id}',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Consumer<Item>(
                  builder: (context, item, child) {
                    return InkWell(
                      onTap: (() {
                        // print('1');
                        item.toggleIsFavorite(item.id);
                        Provider.of<ItemProvider>(context, listen: false)
                            .handleCountItemFav();
                      }),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: item.isFavorite ? Colors.red : Colors.white,
                      ),
                    );
                  },
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.name}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${item.description}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

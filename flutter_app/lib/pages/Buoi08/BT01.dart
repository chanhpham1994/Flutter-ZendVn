import 'package:flutter/material.dart';
import 'package:flutter_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class B8BT01 extends StatefulWidget {
  const B8BT01({super.key});

  @override
  State<B8BT01> createState() => _B8BT01State();
}

class _B8BT01State extends State<B8BT01> {
  bool checkVallue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              checkVallue ? 'Light' : 'Dark',
              // style: Theme.of(context).textTheme.bodyMedium,
            ),
            Switch(
                value: checkVallue,
                onChanged: (value) {
                  // setState(() {
                  //   checkVallue = value;
                  // });
                  // Provider.of<ThemeProvider>(context, listen: true)
                  //     .switchButton(value);
                  // print(checkVallue);
                }),
          ],
        ),
      ),
    );
  }
}

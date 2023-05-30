import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B6BT01 extends StatelessWidget {
  const B6BT01({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(
                fontFamily: 'Glo',
                fontSize: 30,
              ),
            ),
            Text(
              'Hello World!!',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 30,
              )),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';



class TachycardiaViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  TachycardiaViewController(
      this.index,
      this.cardsCollection
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: PageController(
            keepPage: true,
            initialPage: index,
            viewportFraction: 1.0,
          ),
          children: [

          ],
        ),
      ),
    );
  }
}
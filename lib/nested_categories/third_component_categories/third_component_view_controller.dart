import 'package:flutter/material.dart';


class ThirdComponentViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  ThirdComponentViewController(
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
//            SecondComponentFirstCardDetailPage(cardsCollection[0]),
//            SecondComponentFirstCardDetailPage(cardsCollection[1]),
//            SecondComponentFirstCardDetailPage(cardsCollection[2]),
//            SecondComponentSecondCardDetailPage(cardsCollection[3])
          ],
        ),
      ),
    );
  }
}
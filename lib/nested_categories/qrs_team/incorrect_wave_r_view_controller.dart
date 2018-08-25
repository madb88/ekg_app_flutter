import 'package:flutter/material.dart';
import '../../detail_page.dart';




class IncorrectWaveRViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  IncorrectWaveRViewController(
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
//            IwFirstCardDetailPage(cardsCollection[0]),

          ],
        ),
      ),
    );
  }
}
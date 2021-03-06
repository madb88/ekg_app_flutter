import 'package:flutter/material.dart';
import '../../../detail_views/second_component_cards/tachycardia_cards/tachycardia_first_card_detail_page.dart';


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
            TachycardiaFirstCardDetailPage(cardsCollection[0]),
            TachycardiaFirstCardDetailPage(cardsCollection[1]),
            TachycardiaFirstCardDetailPage(cardsCollection[2]),
            TachycardiaFirstCardDetailPage(cardsCollection[3]),
            TachycardiaFirstCardDetailPage(cardsCollection[4])
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../detail_views/second_component_cards/second_component_first_card_detail_page.dart';
import '../../detail_views/second_component_cards/second_component_second_card_detail_page.dart';


class SecondComponentViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  SecondComponentViewController(
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
            SecondComponentFirstCardDetailPage(cardsCollection[0]),
            SecondComponentFirstCardDetailPage(cardsCollection[1]),
            SecondComponentFirstCardDetailPage(cardsCollection[2]),
            SecondComponentSecondCardDetailPage(cardsCollection[3])
          ],
        ),
      ),
    );
  }
}
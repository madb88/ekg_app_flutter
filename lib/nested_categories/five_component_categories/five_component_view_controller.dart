import 'package:flutter/material.dart';
import '../../detail_views/five_component_cards/five_component_first_card_detail_page.dart';
import '../../detail_views/second_component_cards/second_component_second_card_detail_page.dart';

class FiveComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FiveComponentViewController(this.index, this.cardsCollection);

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
            FiveComponentFirstCardDetailPage(cardsCollection[0]),
            SecondComponentSecondCardDetailPage(cardsCollection[1]),
            FiveComponentFirstCardDetailPage(cardsCollection[2]),
            FiveComponentFirstCardDetailPage(cardsCollection[3]),
          ],
        ),
      ),
    );
  }
}

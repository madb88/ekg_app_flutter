import 'package:flutter/material.dart';
import '../../detail_views/fourth_component_cards/fourth_component_second_card_detail_page.dart';

class FourthComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FourthComponentViewController(this.index, this.cardsCollection);

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
            FourthComponentSecondCardDetailPage(cardsCollection[0]),
            FourthComponentSecondCardDetailPage(cardsCollection[1]),
            FourthComponentSecondCardDetailPage(cardsCollection[2]),
            FourthComponentSecondCardDetailPage(cardsCollection[3]),
            FourthComponentSecondCardDetailPage(cardsCollection[4]),
            FourthComponentSecondCardDetailPage(cardsCollection[5]),
            FourthComponentSecondCardDetailPage(cardsCollection[6]),
            FourthComponentSecondCardDetailPage(cardsCollection[7]),
            FourthComponentSecondCardDetailPage(cardsCollection[8])
          ],
        ),
      ),
    );
  }
}

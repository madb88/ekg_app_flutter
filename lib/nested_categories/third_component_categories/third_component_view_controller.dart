import 'package:flutter/material.dart';
import '../../detail_views/third_component_cards/third_component_first_card_detail_page.dart';

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
            ThirdComponentFirstCardDetailPage(cardsCollection[0]),
            ThirdComponentFirstCardDetailPage(cardsCollection[1]),
            ThirdComponentFirstCardDetailPage(cardsCollection[2]),
            ThirdComponentFirstCardDetailPage(cardsCollection[3]),
            ThirdComponentFirstCardDetailPage(cardsCollection[4]),
            ThirdComponentFirstCardDetailPage(cardsCollection[5]),
            ThirdComponentFirstCardDetailPage(cardsCollection[6]),
            ThirdComponentFirstCardDetailPage(cardsCollection[7]),
            ThirdComponentFirstCardDetailPage(cardsCollection[8]),
            ThirdComponentFirstCardDetailPage(cardsCollection[9]),
            ThirdComponentFirstCardDetailPage(cardsCollection[10]),
            ThirdComponentFirstCardDetailPage(cardsCollection[11]),
            ThirdComponentFirstCardDetailPage(cardsCollection[12]),
            ThirdComponentFirstCardDetailPage(cardsCollection[13]),
            ThirdComponentFirstCardDetailPage(cardsCollection[14]),
            ThirdComponentFirstCardDetailPage(cardsCollection[15])


          ],
        ),
      ),
    );
  }
}
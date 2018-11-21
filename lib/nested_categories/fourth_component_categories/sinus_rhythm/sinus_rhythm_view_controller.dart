import 'package:flutter/material.dart';
import '../../../detail_views/fourth_component_cards/fourth_component_fourth_card_detail_page.dart';

class SinusRhythmViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  SinusRhythmViewController(
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
            FourthComponentFourthCardDetailPage(cardsCollection[0]),
            FourthComponentFourthCardDetailPage(cardsCollection[1]),

          ],
        ),
      ),
    );
  }
}
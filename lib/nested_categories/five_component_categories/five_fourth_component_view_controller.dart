import 'package:flutter/material.dart';
import '../../detail_views/five_component_cards/five_component_third_card_detail_page.dart';


class FiveFourthComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FiveFourthComponentViewController(this.index, this.cardsCollection);

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
            FiveComponentThirdCardDetailPage(cardsCollection[0]),
            FiveComponentThirdCardDetailPage(cardsCollection[1]),
            FiveComponentThirdCardDetailPage(cardsCollection[2]),
            FiveComponentThirdCardDetailPage(cardsCollection[3])
          ],
        ),
      ),
    );
  }
}

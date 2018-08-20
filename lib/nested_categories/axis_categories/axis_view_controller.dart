import 'package:flutter/material.dart';
import '../../detail_page.dart';
import '../.././detail_views/axis_cards/axis_first_card_detail_page.dart';
import '../.././detail_views/axis_cards/axis_third_card_detail_page.dart';

class AxisViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  AxisViewController(
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
            DetailPage(cardsCollection[0]),
            AxisFirstCardDetailPage(cardsCollection[1]),
            AxisThirdCardDetailPage(cardsCollection[2])
          ],
        ),
      ),
    );
  }
}

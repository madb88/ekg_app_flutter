import 'package:flutter/material.dart';
import '../../../detail_views/five_component_cards/second_nested_cards/second_component_second_nested_card_detail_page.dart';

class SecondNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  SecondNestedComponentViewController(this.index, this.cardsCollection);

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
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[0]),
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}

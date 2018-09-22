import 'package:flutter/material.dart';
import '../../../detail_views/five_component_cards/first_nested_cards/five_component_first_nested_card_detail_page.dart';
import '../../../detail_views/five_component_cards/first_nested_cards/five_component_second_nested_card_detail_page.dart';

class FirstNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FirstNestedComponentViewController(this.index, this.cardsCollection);

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
            FiveComponentFirstNestedCardDetailPage(cardsCollection[0]),
            FiveComponentSecondNestedCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}

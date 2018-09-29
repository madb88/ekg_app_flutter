import 'package:flutter/material.dart';
import '../../../detail_views/five_component_cards/fourth_nested_cards/five_component_fourth_nested_card_detail_page.dart';

class FiveNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FiveNestedComponentViewController(this.index, this.cardsCollection);

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
            FiveComponentFourthNestedCardDetailPage(cardsCollection[0]),
            FiveComponentFourthNestedCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}

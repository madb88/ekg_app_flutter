import 'package:flutter/material.dart';
import '../../../detail_views/five_component_cards/second_nested_cards/second_component_second_nested_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';

class ThirdNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  ThirdNestedComponentViewController(this.index, this.cardsCollection);

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
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[1]),
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[2]),
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[3]),
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[4])
          ],
        ),
      ),
    );
  }
}

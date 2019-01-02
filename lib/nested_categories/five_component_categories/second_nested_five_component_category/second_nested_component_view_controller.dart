import 'package:flutter/material.dart';
import '../../../detail_views/five_component_cards/second_nested_cards/second_component_second_nested_card_detail_page.dart';
import '../third_nested_five_component_category/third_nested_component_card_list.dart';


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
            ThirdNestedComponentCardList(cardsCollection[1]['title'],'third_nested_five_component_cards'),
            SecondFiveComponentSecondNestedCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}

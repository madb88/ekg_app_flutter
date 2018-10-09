import 'package:flutter/material.dart';
import '../../../detail_views/six_component/third_nested/third_nested_card_detail_page.dart';
import '../../../detail_views/six_component/third_nested/third_nested_second_card_detail_page.dart';
import '../../../detail_views/six_component/third_nested/third_nested_third_card_detail_page.dart';
import '../../../detail_views/six_component/third_nested/third_nested_fourth_card_detail_page.dart';

class ThirdNestedSixComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  ThirdNestedSixComponentViewController(this.index, this.cardsCollection);

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
            ThirdNestedCardDetailPage(cardsCollection[0]),
            ThirdNestedCardDetailPage(cardsCollection[1]),
            ThirdNestedSecondCardDetailPage(cardsCollection[2]),
            ThirdNestedThirdCardDetailPage(cardsCollection[3]),
            ThirdNestedFourthCardDetailPage(cardsCollection[4])
          ],
        ),
      ),
    );
  }
}

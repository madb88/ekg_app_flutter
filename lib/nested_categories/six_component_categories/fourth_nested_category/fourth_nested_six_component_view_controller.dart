import 'package:flutter/material.dart';
import '../../../detail_views/six_component/fourth_nested/fourth_nested_card_detail_page.dart';
import '../../../detail_views/six_component/fourth_nested/fourth_nested_second_card_detail_page.dart';
import '../../../detail_views/six_component/fourth_nested/fourth_nested_third_card_detail_page.dart';


class FourthNestedSixComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FourthNestedSixComponentViewController(this.index, this.cardsCollection);

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
            FourthNestedCardDetailPage(cardsCollection[0]),
            FourthNestedSecondCardDetailPage(cardsCollection[1]),
            FourthNestedThirdCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}

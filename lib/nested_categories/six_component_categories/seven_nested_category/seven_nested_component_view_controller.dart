import 'package:flutter/material.dart';
import '../../../detail_views/six_component/five_nested/five_nested_card_detail_page.dart';
import '../../../detail_views/six_component/five_nested/five_nested_second_card_detail_page.dart';

class SevenNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  SevenNestedComponentViewController(this.index, this.cardsCollection);

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
            FiveNestedCardDetailPage(cardsCollection[0]),
            FiveNestedSecondCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}

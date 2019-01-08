import 'package:flutter/material.dart';
import '../../detail_views/six_component/six_component_fist_card_detail_page.dart';
import '../../detail_views/six_component/six_component_special_card_detail_page.dart';


class SixComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  SixComponentViewController(this.index, this.cardsCollection);

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
            SixComponentFirstCardDetailPage(cardsCollection[0]),
            SixComponentFirstCardDetailPage(cardsCollection[1]),
            SixComponentFirstCardDetailPage(cardsCollection[2]),
            SixComponentFirstCardDetailPage(cardsCollection[3]),
            SixComponentFirstCardDetailPage(cardsCollection[4]),
            SixComponentFirstCardDetailPage(cardsCollection[5]),
            SixComponentFirstCardDetailPage(cardsCollection[6]),
            SixComponentFirstCardDetailPage(cardsCollection[7]),
            SixComponentFirstCardDetailPage(cardsCollection[8]),
            SixComponentFirstCardDetailPage(cardsCollection[9]),
            SixComponentSpecialCardDetailPage(cardsCollection[10]),
            SixComponentFirstCardDetailPage(cardsCollection[11]),
          ],
        ),
      ),
    );
  }
}

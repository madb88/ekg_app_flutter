import 'package:flutter/material.dart';
import '../../../../detail_views/six_component/ozw/second_list/ozw_fourth_card_detail_page.dart';

class OzwThirdComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  OzwThirdComponentViewController(this.index, this.cardsCollection);

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
            OzwFourthCardDetailPage(cardsCollection[0]),
            OzwFourthCardDetailPage(cardsCollection[1]),
            OzwFourthCardDetailPage(cardsCollection[2]),

          ],
        ),
      ),
    );
  }
}

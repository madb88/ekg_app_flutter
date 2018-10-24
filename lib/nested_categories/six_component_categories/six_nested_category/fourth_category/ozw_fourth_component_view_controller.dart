import 'package:flutter/material.dart';
import '../../../../detail_views/six_component/ozw/fourth_list/ozw_seven_card_detail_page.dart';
import '../../../../detail_views/six_component/ozw/fourth_list/ozw_eight_card_detail_page.dart';

class OzwFourthComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  OzwFourthComponentViewController(this.index, this.cardsCollection);

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
            OzwSevenCardDetailPage(cardsCollection[0]),
            OzwEightCardDetailPage(cardsCollection[1]),

          ],
        ),
      ),
    );
  }
}

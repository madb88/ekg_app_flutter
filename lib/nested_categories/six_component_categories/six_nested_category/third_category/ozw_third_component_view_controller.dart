import 'package:flutter/material.dart';
import '../../../../detail_views/six_component/ozw/third_list/ozw_five_card_detail_page.dart';
import '../../../../detail_views/six_component/ozw/third_list/ozw_six_card_detail_page.dart';
import '../../../../detail_views/six_component/ozw/third_list/ozw_seven_card_detail_page.dart';

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
            OzwFiveCardDetailPage(cardsCollection[0]),
            OzwSixCardDetailPage(cardsCollection[1]),
            OzwSevenCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}

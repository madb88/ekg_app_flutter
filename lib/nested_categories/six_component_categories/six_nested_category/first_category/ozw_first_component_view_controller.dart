import 'package:flutter/material.dart';
import '../../../../detail_views/six_component/ozw/ozw_fist_card_detail_page.dart';
import '../../../../detail_views/six_component/ozw/ozw_second_card_detail_page.dart';
import '../../../../detail_views/six_component/ozw/ozw_third_card_detail_page.dart';

class OzwFirstComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  OzwFirstComponentViewController(this.index, this.cardsCollection);

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
            OzwFirstCardDetailPage(cardsCollection[0]),
            OzwSecondCardDetailPage(cardsCollection[1]),
            OzwThirdCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}

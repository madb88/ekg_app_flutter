import 'package:flutter/material.dart';
import '../../../../detail_views/six_component/ozw/seven_list/ozw_nine_card_detail_page.dart';

class OzwSevenComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  OzwSevenComponentViewController(this.index, this.cardsCollection);

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
            OzwNineCardDetailPage(cardsCollection[0])

          ],
        ),
      ),
    );
  }
}

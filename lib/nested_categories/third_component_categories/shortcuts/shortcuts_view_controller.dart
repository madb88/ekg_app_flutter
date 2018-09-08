import 'package:flutter/material.dart';
import '../../../detail_views/second_component_cards/arrhythmia_cards/arrhytmia_first_card_detail_page.dart';


class ShortcutsViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  ShortcutsViewController(
      this.index,
      this.cardsCollection
    );

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
//           ArrhythmiaFirstCardDetailPage(cardsCollection[0]),
//           ArrhythmiaFirstCardDetailPage(cardsCollection[1]),
//           ArrhythmiaFirstCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}
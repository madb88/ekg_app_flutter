import 'package:flutter/material.dart';
import '../../../detail_views/fourth_component_cards/fourth_component_first_card_detail_page.dart';
import '../../../detail_views/fourth_component_cards/fourth_component_third_card_detail_page.dart';



class AdditionalVentricularViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  AdditionalVentricularViewController(
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
            FourthComponentFirstCardDetailPage(cardsCollection[0]),
            FourthComponentFirstCardDetailPage(cardsCollection[1]),
            FourthComponentFirstCardDetailPage(cardsCollection[2]),
            FourthComponentFirstCardDetailPage(cardsCollection[3]),
            FourthComponentThirdCardDetailPage(cardsCollection[4]),
            FourthComponentFirstCardDetailPage(cardsCollection[5])


          ],
        ),
      ),
    );
  }
}
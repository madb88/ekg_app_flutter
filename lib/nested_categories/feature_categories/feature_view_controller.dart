import 'package:flutter/material.dart';
import '../../detail_views/feature_cards/feature_first_card_detail_page.dart';
import '../../detail_views/feature_cards/feature_second_card_detail_page.dart';
import '../../detail_views/feature_cards/feature_third_card_detail_page.dart';

class FeatureViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  FeatureViewController(
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
            FeatureFirstCardDetailPage(cardsCollection[0]),
            FeatureSecondCardDetailPage(cardsCollection[1]),
            FeatureThirdCardDetailPage(cardsCollection[2])
          ],
        ),
      ),
    );
  }
}

//switchSection(categoryNumber){
//  switch(categoryNumber['category']){
//    case 1:
//      return DetailPage(categoryNumber);
//      break;
//    case 2:
//      return OtherConceptsSecondCardDetailPage(categoryNumber);
//      break;
//  }
//}

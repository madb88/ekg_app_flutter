import 'package:flutter/material.dart';
import '../../detail_views/st_section_cards/st_lowering_cards/st_lowering_firt_card_detail_page.dart';
import '../../detail_views/st_section_cards/st_lowering_cards/st_lowering_second_card_detail_page.dart';
import '../../detail_views/st_section_cards/st_lowering_cards/st_lowering_third_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';


class StSectionLoweringViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  StSectionLoweringViewController(
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
            StLoweringFirstCardDetailPage(cardsCollection[0]),
            StLoweringSecondCardDetailPage(cardsCollection[1]),
            StLoweringThirdCardDetailPage(cardsCollection[2]),
            StLoweringSecondCardDetailPage(cardsCollection[3]),
            StLoweringSecondCardDetailPage(cardsCollection[4]),
          ],
        ),
      ),
    );
  }
}
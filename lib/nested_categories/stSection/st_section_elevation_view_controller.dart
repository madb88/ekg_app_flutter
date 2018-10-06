import 'package:flutter/material.dart';
import '../../detail_views/st_section_cards/st_elevation_cards/st_section_card_detail_page.dart';
import '../../detail_views/st_section_cards/st_elevation_cards/st_section_second_card_detail_page.dart';
import '../../detail_views/st_section_cards/st_elevation_cards/st_section_third_card_detail_page.dart';
import '../../detail_views/st_section_cards/st_elevation_cards/st_section_fourth_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class StSectionElevationViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  StSectionElevationViewController(
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
            StElevationFirstCardDetailPage(cardsCollection[0]),
            StElevationSecondCardDetailPage(cardsCollection[1]),
            StElevationThirdCardDetailPage(cardsCollection[2]),
            StElevationThirdCardDetailPage(cardsCollection[3]),
            StElevationFourthCardDetailPage(cardsCollection[4]),
            StElevationFourthCardDetailPage(cardsCollection[5]),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../detail_views/five_component_cards/five_component_second_card_detail_page.dart';
import '../../detail_views/third_component_cards/supraventricular_stimulation/supraventricular_stimulation_first_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class FiveThirdComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FiveThirdComponentViewController(this.index, this.cardsCollection);

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
            FiveComponentSecondCardDetailPage(cardsCollection[0]),
            SuperaventricularFirstCardDetailPage(cardsCollection[1]),
            FiveComponentSecondCardDetailPage(cardsCollection[2]),
            FiveComponentSecondCardDetailPage(cardsCollection[3])
          ],
        ),
      ),
    );
  }
}

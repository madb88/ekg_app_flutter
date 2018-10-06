import 'package:flutter/material.dart';
import '../../../detail_views/third_component_cards/supraventricular_stimulation/supraventricular_stimulation_first_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';

class SupraventricularStimulationViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  SupraventricularStimulationViewController(
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
           SuperaventricularFirstCardDetailPage(cardsCollection[0]),
           SuperaventricularFirstCardDetailPage(cardsCollection[1]),
           SuperaventricularFirstCardDetailPage(cardsCollection[2]),
           SuperaventricularFirstCardDetailPage(cardsCollection[3]),
           SuperaventricularFirstCardDetailPage(cardsCollection[4])
          ],
        ),
      ),
    );
  }
}
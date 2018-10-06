import 'package:flutter/material.dart';
import '../../detail_views/wavelength_cards/wavelength_normal_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class WaveLengthViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  WaveLengthViewController(
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
            WaveLengthNormalCardDetailPage(cardsCollection[0]),
          ],
        ),
      ),
    );
  }
}
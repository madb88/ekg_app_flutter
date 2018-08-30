import 'package:flutter/material.dart';
import '../../detail_views/episodes_interval_cards/episode_card_detail_page.dart';
import '../../detail_views/wavelengthT/wavelengthT_list_card_detail_page.dart';

class WaveLengthTViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  WaveLengthTViewController(
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
            WavelengthTListCardDetailPage(cardsCollection[0]),
            WavelengthTListCardDetailPage(cardsCollection[1]),
          ],
        ),
      ),
    );
  }
}


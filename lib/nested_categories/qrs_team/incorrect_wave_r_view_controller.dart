import 'package:flutter/material.dart';
import '../../detail_views/qrs_team_cards/incorrect_wave_r/first_r_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/incorrect_wave_r/last_r_card_detail_page.dart';


class IncorrectWaveRViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  IncorrectWaveRViewController(
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
            FirstRCardDetailPage(cardsCollection[0]),
            FirstRCardDetailPage(cardsCollection[1]),
            FirstRCardDetailPage(cardsCollection[2]),
            FirstRCardDetailPage(cardsCollection[3]),
            LastRCardDetailPage(cardsCollection[4]),


          ],
        ),
      ),
    );
  }
}
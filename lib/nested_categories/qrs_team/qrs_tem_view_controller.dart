import 'package:flutter/material.dart';
import '../../detail_views/qrs_team_cards/qrs_first_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_second_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_third_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_five_card_detail_page.dart';

class QrsTeamViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  QrsTeamViewController(
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
            QrsFirstCardDetailPage(cardsCollection[0]),
            QrsSecondCardDetailPage(cardsCollection[1]),
            QrsThirdCardDetailPage(cardsCollection[2]),
            QrsThirdCardDetailPage(cardsCollection[3]),
            QrsFiveCardDetailPage(cardsCollection[4]),

          ],
        ),
      ),
    );
  }
}
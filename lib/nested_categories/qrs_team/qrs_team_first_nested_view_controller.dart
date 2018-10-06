import 'package:flutter/material.dart';
import '../../detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_first_nested/qrs_first_nested_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_first_nested/qrs_list_nested_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/qrs_first_nested/qrs_list_with_route_nested_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';


class QrsTeamFirstNestedViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  QrsTeamFirstNestedViewController(
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
            DetailPage(cardsCollection[0]),
            QrsFirstNestedCardDetailPage(cardsCollection[1]),
            QrsListNestedCardDetailPage(cardsCollection[2]),
            QrsListNestedCardDetailPage(cardsCollection[3]),
            QrsListWithRouteNestedCardDetailPage(cardsCollection[4],cardsCollection[1]),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../detail_views/qrs_team_cards/incorrect_wave_r/first_r_card_detail_page.dart';
import '../../detail_views/qrs_team_cards/incorrect_wave_r/last_r_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';


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
      floatingActionButton: FloatingCustomButton(Colors.blue[900],'tag'),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue[900],
          child: Container(height: 40.0)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
import 'package:flutter/material.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_first_card_detail_page.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_second_card_detail_page.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_third_card_detail_page.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_fourth_card_detail_page.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_six_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class EkgComponentViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  EkgComponentViewController(
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
            IwFirstCardDetailPage(cardsCollection[0]),
            IwSecondCardDetailPage(cardsCollection[1]),
            IwThirdCardDetailPage(cardsCollection[2]),
            IwFourthCardDetailPage(cardsCollection[3]),
            IwFourthCardDetailPage(cardsCollection[4]),
            IwFourthCardDetailPage(cardsCollection[5]),
            IwSixCardDetailPage(cardsCollection[6]),
            IwSixCardDetailPage(cardsCollection[7]),
            IwSixCardDetailPage(cardsCollection[8]),
          ],
        ),
      ),
    );
  }
}
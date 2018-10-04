import 'package:flutter/material.dart';
import '../../detail_views/fourth_component_cards/fourth_component_second_card_detail_page.dart';
import '../../detail_views/fourth_component_cards/fourth_component_third_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class FourthComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FourthComponentViewController(this.index, this.cardsCollection);

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
            FourthComponentSecondCardDetailPage(cardsCollection[0]),
            FourthComponentThirdCardDetailPage(cardsCollection[1]),
            FourthComponentSecondCardDetailPage(cardsCollection[2]),
            FourthComponentSecondCardDetailPage(cardsCollection[3]),
            FourthComponentSecondCardDetailPage(cardsCollection[4]),
            FourthComponentSecondCardDetailPage(cardsCollection[5]),
            FourthComponentSecondCardDetailPage(cardsCollection[6]),
            FourthComponentSecondCardDetailPage(cardsCollection[7]),
            FourthComponentSecondCardDetailPage(cardsCollection[8]),
            FourthComponentSecondCardDetailPage(cardsCollection[9])
          ],
        ),
      ),
    );
  }
}

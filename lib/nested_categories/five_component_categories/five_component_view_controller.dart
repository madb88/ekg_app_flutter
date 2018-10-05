import 'package:flutter/material.dart';
import '../../detail_views/five_component_cards/five_component_first_card_detail_page.dart';
import '../../detail_views/second_component_cards/second_component_second_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class FiveComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FiveComponentViewController(this.index, this.cardsCollection);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingCustomButton(Colors.orange[900],'tag'),
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
            FiveComponentFirstCardDetailPage(cardsCollection[0]),
            FiveComponentFirstCardDetailPage(cardsCollection[1]),
            SecondComponentSecondCardDetailPage(cardsCollection[2]),
            FiveComponentFirstCardDetailPage(cardsCollection[3]),
            FiveComponentFirstCardDetailPage(cardsCollection[4])
          ],
        ),
      ),
    );
  }
}

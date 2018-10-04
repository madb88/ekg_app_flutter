import 'package:flutter/material.dart';
import '../../../detail_views/fourth_component_cards/fourth_component_fourth_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';

class SinusRhythmViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  SinusRhythmViewController(
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
            FourthComponentFourthCardDetailPage(cardsCollection[0]),
            FourthComponentFourthCardDetailPage(cardsCollection[1]),

          ],
        ),
      ),
    );
  }
}
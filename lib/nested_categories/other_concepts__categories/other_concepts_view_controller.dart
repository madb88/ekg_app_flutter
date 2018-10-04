import 'package:flutter/material.dart';
import '../../detail_page.dart';
import '../../detail_views/other_concepts_cards/other_concepts_second_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class OtherConceptsViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  OtherConceptsViewController(
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
            DetailPage(cardsCollection[0]),
            OtherConceptsSecondCardDetailPage(cardsCollection[1]),
            DetailPage(cardsCollection[2]),
            DetailPage(cardsCollection[3]),
            DetailPage(cardsCollection[4]),
            DetailPage(cardsCollection[5]),
          ],
        ),
      ),
    );
  }
}


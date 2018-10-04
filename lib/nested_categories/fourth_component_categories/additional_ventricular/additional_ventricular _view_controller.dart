import 'package:flutter/material.dart';
import '../../../detail_views/fourth_component_cards/fourth_component_first_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';



class AdditionalVentricularViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  AdditionalVentricularViewController(
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
            FourthComponentFirstCardDetailPage(cardsCollection[0]),
            FourthComponentFirstCardDetailPage(cardsCollection[1]),
            FourthComponentFirstCardDetailPage(cardsCollection[2]),
            FourthComponentFirstCardDetailPage(cardsCollection[3])
          ],
        ),
      ),
    );
  }
}
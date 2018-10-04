import 'package:flutter/material.dart';
import '../../../detail_views/second_component_cards/arrhythmia_cards/arrhytmia_first_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';


class ArrhythmiaViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  ArrhythmiaViewController(
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
           ArrhythmiaFirstCardDetailPage(cardsCollection[0]),
           ArrhythmiaFirstCardDetailPage(cardsCollection[1]),
           ArrhythmiaFirstCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../detail_views/ekg_incorrect_wavelength_cards/iw_nested_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class IwNestedComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  IwNestedComponentViewController(
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
            IwNestedCardDetailPage(cardsCollection[0]),
            IwNestedCardDetailPage(cardsCollection[1]),
          ],
        ),
      ),
    );
  }
}
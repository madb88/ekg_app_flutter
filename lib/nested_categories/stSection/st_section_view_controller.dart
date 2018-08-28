import 'package:flutter/material.dart';
import '../../detail_views/st_section_cards/st_section_card_detail_page.dart';

class StSectionViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  StSectionViewController(
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
            StSectionCardDetailPage(cardsCollection[0]),
          ],
        ),
      ),
    );
  }
}
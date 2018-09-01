import 'package:flutter/material.dart';
import '../../detail_views/qt_space/qt_space_first_card_detail_page.dart';

class QtSpaceViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  QtSpaceViewController(
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
            QtSpaceFirstCardDetailPage(cardsCollection[0]),
          ],
        ),
      ),
    );
  }
}


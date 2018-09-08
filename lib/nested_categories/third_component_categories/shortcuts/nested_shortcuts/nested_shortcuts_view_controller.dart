import 'package:flutter/material.dart';


class NestedShortcutsViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  NestedShortcutsViewController(
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
//           ArrhythmiaFirstCardDetailPage(cardsCollection[0]),
//           ArrhythmiaFirstCardDetailPage(cardsCollection[1]),
//           ArrhythmiaFirstCardDetailPage(cardsCollection[2]),
          ],
        ),
      ),
    );
  }
}
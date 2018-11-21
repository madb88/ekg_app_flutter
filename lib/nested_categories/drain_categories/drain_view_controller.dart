import 'package:flutter/material.dart';
import '../../detail_views/special_detail_page.dart';
import '../../detail_views/discharging_adjacent_detail_page.dart';

class DrainViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  DrainViewController(
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
            SpecialDetailPage(cardsCollection[0]),
            DischargingAdjacentDetailPage(cardsCollection[1]),
          ],
        ),
      ),
    );
  }
}
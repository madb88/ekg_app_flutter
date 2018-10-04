import 'package:flutter/material.dart';
import '../../detail_views/six_component/six_component_fist_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';


class SixComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  SixComponentViewController(this.index, this.cardsCollection);

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
            SixComponentFirstCardDetailPage(cardsCollection[0]),
            SixComponentFirstCardDetailPage(cardsCollection[1]),
            SixComponentFirstCardDetailPage(cardsCollection[2]),
            SixComponentFirstCardDetailPage(cardsCollection[3]),
            SixComponentFirstCardDetailPage(cardsCollection[4]),
            SixComponentFirstCardDetailPage(cardsCollection[5]),
            SixComponentFirstCardDetailPage(cardsCollection[6]),
            SixComponentFirstCardDetailPage(cardsCollection[7]),
            SixComponentFirstCardDetailPage(cardsCollection[8]),
            SixComponentFirstCardDetailPage(cardsCollection[9]),
            SixComponentFirstCardDetailPage(cardsCollection[10])
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../detail_views/third_component_cards/shortcuts/shortcuts_first_card_detail_page.dart';
import '../../../detail_views/third_component_cards/shortcuts/shortcuts_second_card_detail_page.dart';
import '../../../detail_views/third_component_cards/shortcuts/shortcuts_third_card_detail_page.dart';
import '../../../customWidgets/floating_custom_button.dart';


class ShortcutsViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  ShortcutsViewController(
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
            ShortcutsFirstCardDetailPage(cardsCollection[0]),
            ShortcutsSecondCardDetailPage(cardsCollection[1]),
            ShortcutsFirstCardDetailPage(cardsCollection[2]),
            ShortcutsThirdCardDetailPage(cardsCollection[3]),
          ],
        ),
      ),
    );
  }
}
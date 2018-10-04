import 'package:flutter/material.dart';
import '../../../../detail_views/third_component_cards/shortcuts/nestesd_shortcuts_cards/nested_shortcut_first_card_detail_page.dart';
import '../../../../detail_views/third_component_cards/shortcuts/nestesd_shortcuts_cards/nested_shortcut_second_card_detail_page.dart';
import '../../../../customWidgets/floating_custom_button.dart';


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
            NestedShortcutsFirstCardDetailPage(cardsCollection[0]),
            NestedShortcutsSecondCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}
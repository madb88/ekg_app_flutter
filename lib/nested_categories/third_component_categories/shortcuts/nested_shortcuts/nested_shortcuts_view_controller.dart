import 'package:flutter/material.dart';
import '../../../../detail_views/third_component_cards/shortcuts/nestesd_shortcuts_cards/nested_shortcut_first_card_detail_page.dart';
import '../../../../detail_views/third_component_cards/shortcuts/nestesd_shortcuts_cards/nested_shortcut_second_card_detail_page.dart';


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
            NestedShortcutsFirstCardDetailPage(cardsCollection[0]),
            NestedShortcutsSecondCardDetailPage(cardsCollection[1])
          ],
        ),
      ),
    );
  }
}
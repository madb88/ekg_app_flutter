import 'package:flutter/material.dart';
import '../../detail_views/wavelengthT/wavelengthT_list_card_detail_page.dart';
import '../../detail_views/wavelengthT/wavelengthT_second_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';

class WaveLengthTViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  WaveLengthTViewController(
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
            WavelengthTListCardDetailPage(cardsCollection[0]),
            WavelengthTListCardDetailPage(cardsCollection[1]),
            WavelengthTSecondCardDetailPage(cardsCollection[2]),
            WavelengthTListCardDetailPage(cardsCollection[3]),
          ],
        ),
      ),
    );
  }
}


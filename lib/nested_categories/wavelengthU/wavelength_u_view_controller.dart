import 'package:flutter/material.dart';
import '../../detail_views/wavelengthU/wavelengthU_first_card_detail_page.dart';
import '../../detail_views/wavelengthU/wavelengthU_second_card_detail_page.dart';
import '../../customWidgets/floating_custom_button.dart';


class WaveLengthUViewController extends StatelessWidget {

  final index;
  final cardsCollection;

  WaveLengthUViewController(
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
              WavelengthUFirstCardDetailPage(cardsCollection[0]),
              WavelengthUSecondCardDetailPage(cardsCollection[1]),
              WavelengthUFirstCardDetailPage(cardsCollection[2])
          ],
        ),
      ),
    );
  }
}


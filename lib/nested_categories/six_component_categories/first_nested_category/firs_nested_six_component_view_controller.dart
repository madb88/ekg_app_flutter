import 'package:flutter/material.dart';
import '../../../detail_views/six_component/first_nested/six_component_fist_nestedcard_detail_page.dart';
import '../../../detail_views/six_component/first_nested/six_component_second_nestedcard_detail_page.dart';


class FirstNestedSixComponentViewController extends StatelessWidget {
  final index;
  final cardsCollection;

  FirstNestedSixComponentViewController(this.index, this.cardsCollection);

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
            SixComponentFirstNestedCardDetailPage(cardsCollection[0]),
            SixComponentSecondNestedCardDetailPage(cardsCollection[1]),
            SixComponentSecondNestedCardDetailPage(cardsCollection[2]),
            SixComponentSecondNestedCardDetailPage(cardsCollection[3]),
            SixComponentSecondNestedCardDetailPage(cardsCollection[4]),
            SixComponentSecondNestedCardDetailPage(cardsCollection[5])
          ],
        ),
      ),
    );
  }
}

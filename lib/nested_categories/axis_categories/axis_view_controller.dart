import 'package:flutter/material.dart';
import '../../detail_page.dart';
import '../.././detail_views/axis_cards/axis_first_card_detail_page.dart';
import '../.././detail_views/axis_cards/axis_third_card_detail_page.dart';

class AxisViewController extends StatefulWidget {

  final index;
  final cardsCollection;

    AxisViewController(
      this.index,
      this.cardsCollection
    );

  @override
  _AxisViewControllerState createState() => _AxisViewControllerState();
}
class _AxisViewControllerState extends State<AxisViewController> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var list = {
    0: DetailPage(widget.cardsCollection[0]),
    1: AxisFirstCardDetailPage(widget.cardsCollection[1]),
    2: AxisThirdCardDetailPage(widget.cardsCollection[2])
    };

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller:
            PageController(
              keepPage: true,
              initialPage: widget.index,
              viewportFraction: 1.0,
            ),
              itemBuilder: (BuildContext context, int index) {
                return list[index];
              },
              itemCount: list.length,

          ),
        ],
      ),
    );
  }
}

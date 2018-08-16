import 'package:flutter/material.dart';
import '../customWidgets/normal_text.dart';

class FlexibleRowNormalText extends StatelessWidget {
  final String text;
  final double textSize;
  final textWeight;

  FlexibleRowNormalText(this.text, this.textSize, this.textWeight);

  @override
  Widget build(BuildContext context) {
    Row flexibleRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: NormalText(text, textWeight),
        )
      ],
    );
    return flexibleRow;
  }
}

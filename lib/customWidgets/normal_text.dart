import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {

  final text;
  final customWeight;

  NormalText(
    this.text,
    this.customWeight
  );

  @override
    Widget build(BuildContext context) {
    Text colorText =  
        Text(
          text,
          style: new TextStyle(fontSize: 20.0, fontWeight: customWeight),
          textAlign: TextAlign.justify,
        );
      return colorText;
    }
 
}
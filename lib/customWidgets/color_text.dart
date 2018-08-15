import 'package:flutter/material.dart';

class ColoredText extends StatelessWidget {

  final color;
  final text;

  ColoredText(
    this.color, 
    this.text
  );

  @override
    Widget build(BuildContext context) {
    Text colorText =  
        Text(
          text,
          style: new TextStyle(fontSize: 20.0, color: color),
          textAlign: TextAlign.justify,
        );
      return colorText;
    }
 
}
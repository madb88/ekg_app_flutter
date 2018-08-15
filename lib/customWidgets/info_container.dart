import 'package:flutter/material.dart';


class InfoContainer extends StatelessWidget{
  final borderColor;
  final backgroundColor;
  final text;
  final textSize;


  InfoContainer(
    this.borderColor,
    this.backgroundColor,
    this.text,
    this.textSize
  );

  @override
    Widget build(BuildContext context) {
    Container inforContainer =  
        Container(
            padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: borderColor, width: 5.0)),
            color: backgroundColor,
          ),
          child: Text(text, style: TextStyle(fontSize: textSize), textAlign: TextAlign.justify,),
        );
      return inforContainer;
    }
 
}
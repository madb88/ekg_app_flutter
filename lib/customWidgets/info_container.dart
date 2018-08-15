import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';


class InfoContainer extends StatelessWidget{
  final borderColor;
  final backgroundColor;
  final String text;
  final double textSize;
  final bool useHtmlTags;


  InfoContainer(
    this.borderColor,
    this.backgroundColor,
    this.text,
    this.textSize,
    this.useHtmlTags
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
          child: useHtmlTags == true ? HtmlView(data: text) : Text(text, style: TextStyle(fontSize: textSize), textAlign: TextAlign.justify),
        );
      return inforContainer;
    }
 
}
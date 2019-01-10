import 'package:flutter/material.dart';
import 'package:ekg_cards_app/customRoute.dart';

class NavigationListElement extends StatelessWidget {

  final routeName;
  final text;
  final textSize;

  NavigationListElement(
    this.routeName, 
    this.text,
    this.textSize
  );

  @override
    Widget build(BuildContext context) {
    ListTile listElement =  
       ListTile(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,MyCustomRoute(builder: (context) => routeName),);
          },
          selected: false,
          title: Text(text, style: TextStyle(fontSize: textSize),));
      return listElement;
    }
 
}
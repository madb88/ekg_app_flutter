import 'package:flutter/material.dart';
import '../card_list.dart';

class ListElement extends StatelessWidget {

  final routeName;
  final text;

  ListElement(
    this.routeName, 
    this.text
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
          title: Text(text));
      return listElement;
    }
 
}
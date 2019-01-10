import 'package:flutter/material.dart';
import 'package:ekg_cards_app/customRoute.dart';
import '../calculator.dart';


class NavigationCalculatorElement extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
    ListTile listElement =
       ListTile(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,MyCustomRoute(builder: (context) => Calculator()),);
          },
           trailing: Icon(Icons.settings, color: Colors.blue[900],),
          selected: false,
          title: Text('Kalkulator', style: TextStyle(fontSize: 20.0, color: Colors.blue[900]),));
      return listElement;
    }
 
}
import 'package:flutter/material.dart';
import '../calculator.dart';
import 'package:ekg_cards_app/customRoute.dart';

class CalculatorButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    InkWell calculatorButton =
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MyCustomRoute(builder: (context) => Calculator()),
        );
      },
      child: new Container(

        height: 50.0,
        width: 250.0,

        decoration: new BoxDecoration(

          color: Colors.red[800],
          border: new Border.all(color: Colors.white),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Center(

          child: new Text(
            'Kalkulator',

            style: new TextStyle(fontSize: 18.0, color: Colors.white, ),
          ),
        ),
      ),
    );
    return calculatorButton;
  }

}
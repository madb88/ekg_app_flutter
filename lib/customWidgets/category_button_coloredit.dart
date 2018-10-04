import 'package:flutter/material.dart';
import '../card_list.dart';

class CategoryButtonColor extends StatelessWidget {

  final routeName;
  final buttonText;
  final buttonColor;


  CategoryButtonColor(
    this.routeName, 
    this.buttonText,
    this.buttonColor
  );

  @override
    Widget build(BuildContext context) {
    InkWell categoryButtonColor =
       InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => routeName),
                );
              },
              child: Container(
                height: 65.0,
                decoration: BoxDecoration(
                  color: buttonColor,
                  border: Border.all(color: Colors.green[900], width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 25.0, color: Colors.black),textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
      return categoryButtonColor;
    }
 
}
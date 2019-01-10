import 'package:flutter/material.dart';
import 'package:ekg_cards_app/customRoute.dart';

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
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        buttonText,
                        style: TextStyle(fontSize: 25.0, color: Colors.black),textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.orange[900],),
                    ),

                  ],
                ),
              ),
            );
      return categoryButtonColor;
    }
 
}
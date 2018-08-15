import 'package:flutter/material.dart';
import '../card_list.dart';

class CategoryButton extends StatelessWidget {

  final routeName;
  final buttonText;

  CategoryButton(
    this.routeName, 
    this.buttonText
  );

  @override
    Widget build(BuildContext context) {
    InkWell categoryButton =  
       InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => routeName),
                );
              },
              child: Container(
                height: 75.0,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            );
      return categoryButton;
    }
 
}
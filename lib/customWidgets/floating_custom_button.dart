import 'package:flutter/material.dart';

class FloatingCustomButton extends StatelessWidget {

  final buttonColor;
  final customTag;


  FloatingCustomButton(
    this.buttonColor,
    this.customTag
  );

  @override
    Widget build(BuildContext context) {
    FloatingActionButton floatingButton =
        FloatingActionButton(
          heroTag: customTag,
          backgroundColor: Colors.orange[900],
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        );
      return floatingButton;
    }
 
}